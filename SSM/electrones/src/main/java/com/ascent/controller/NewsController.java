package com.ascent.controller;

import com.ascent.bean.NewsWithBLOBs;
import com.ascent.service.FileService;
import com.ascent.service.Newsservice;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * @author bruce
 * @date 19-3-20
 */
@Controller
public class NewsController {

    @Autowired
    Newsservice newsservice;

    @Autowired
    FileService fileService;

    final boolean DEBUG = true;

    @RequestMapping("/news/{id}")
    public String displayNews(@PathVariable(name = "id")Integer id,
                              HttpServletRequest request){
        NewsWithBLOBs news = newsservice.selectOne(id);
        request.setAttribute("news", news);
        return "view";
    }

    @RequestMapping("/news")
    public String listNews(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
                           @RequestParam(value = "isManager",required = false) boolean isManager,
                           Map<String,Object> map){

        PageHelper.startPage(pn, 8);
        List<NewsWithBLOBs> newsWithBLOBsList = newsservice.getAllNews();
        PageInfo page = new PageInfo(newsWithBLOBsList, 5);
        map.put("pageInfo",page);
        if(isManager)
            return "newsManage";
        else
            return "newsList";
    }

    @RequestMapping(value = "/news",method = RequestMethod.POST)
    public String addNews(NewsWithBLOBs news,
                          HttpServletRequest request) throws Exception {

        //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
                request.getSession().getServletContext());
        String filePath=null;
        //检查form中是否有enctype="multipart/form-data"
        if(multipartResolver.isMultipart(request))
        {
            //将request变成多部分request
            MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
            //获取multiRequest 中所有的文件名
            Iterator iter=multiRequest.getFileNames();

            while(iter.hasNext())
            {
                //一次遍历所有文件
                MultipartFile file = multiRequest.getFile(iter.next().toString());
                if (DEBUG){
                    System.out.printf("save file "+file.getOriginalFilename());
                }
                if(file!=null)
                {
                    //上传到ftp中
                     filePath=fileService.upload(file);
                    if (filePath != null){
                        System.out.println("上传成功. filePath:"+filePath);
                        news.setPicturepath(filePath);
                    }
                }

            }
        }
        news.setPublishtime(new Date());
        news.setType(1);
        newsservice.addNews(news);
        return "redirect:news?isManager=true";
    }
}
