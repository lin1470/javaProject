package com.ascent.service;

import com.ascent.util.Ftp;
import com.ascent.util.FtpUtil;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

/**
 * @author bruce
 * @date 19-3-22
 */

@Service
public class FileService {

    private String serverIp="139.9.69.205";
    private String serverUser="bruce";
    private String serverPassword="qertu1014";


    public String upload(MultipartFile file) throws Exception {
        Ftp f = new Ftp();
        f.setIpAddr(serverIp);
        f.setUserName(serverUser);
        f.setPwd(serverPassword);
        FtpUtil.connectFtp(f);
        System.out.println(file.toString());
        String tempFile = "./"+file.getOriginalFilename();
        file.transferTo(new File(tempFile));
        File uploadFile= new File(tempFile);
        FtpUtil.upload(uploadFile);//把文件上传在ftp上
        System.out.println("上传文件完成。。。。");

        return "ftp://"+serverIp+"/"+file.getOriginalFilename();
    }
}
