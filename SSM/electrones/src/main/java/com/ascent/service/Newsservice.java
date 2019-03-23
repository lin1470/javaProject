package com.ascent.service;

import com.ascent.bean.News;
import com.ascent.bean.NewsExample;
import com.ascent.bean.NewsWithBLOBs;
import com.ascent.dao.NewsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author bruce
 * @date 19-3-18
 */
@Service
public class Newsservice {

    @Autowired
    NewsMapper newsMapper;
    final boolean DEBUG=false;

    public Map<String,Object> index(){
        Map<String,Object> resultMap = new HashMap<String, Object>();
        // 查询条件
        NewsExample example = new NewsExample();
//        NewsExample.Criteria criteria = example.createCriteria();
        example.setOrderByClause("id desc");
        example.or().andStatusEqualTo(1).andTypeEqualTo(1);
        example.or().andStatusEqualTo(1).andTypeEqualTo(2).andCheckstatusEqualTo(2);
        List<NewsWithBLOBs> newsList = newsMapper.selectByExampleWithBLOBs(example);
        if(DEBUG){
            System.out.println("提取type1的检查");
            for(NewsWithBLOBs news:newsList){
                System.out.println(news.getTitle());
        }
        }
        // 如果有值,则取出
        if(newsList.size()>0){
            NewsWithBLOBs news = newsList.get(0);
            resultMap.put("typ1",news);
        }else{
            resultMap.put("typ1",null);
        }

        // 再来一次查询语句
        example = new NewsExample();
        example.setOrderByClause("id desc");
        NewsExample.Criteria criteria= example.createCriteria();
        criteria.andStatusEqualTo(1).andTypeEqualTo(2).andCheckstatusNotEqualTo(2);
        List<NewsWithBLOBs> list = newsMapper.selectByExampleWithBLOBs(example);

        if(DEBUG){
            System.out.println("提取type2的检查");
            for(NewsWithBLOBs news:list){
                System.out.println(news.getTitle());
        }
        }
        ArrayList li = new ArrayList();
        // 只显示6条以下的数据
        if(list.size()>6){
            for(int i=0;i<6;i++){
                li.add(list.get(i));
            }
            resultMap.put("typ2",li);
        }else if(list.size()>0){
            resultMap.put("typ2",list);
        }else{
            resultMap.put("typ2",null);
        }
        if(DEBUG)
            System.out.println(resultMap.get("typ2"));

        return resultMap;
    }

    public NewsWithBLOBs selectOne(Integer id){
            return newsMapper.selectByPrimaryKey(id);
    }

    public List<NewsWithBLOBs> getAllNews(){
        return newsMapper.selectByExampleWithBLOBs(null);
    }

    public void addNews(NewsWithBLOBs news) {
         newsMapper.insert(news);
         if(DEBUG)
             System.out.println("插入完成");
    }
}
