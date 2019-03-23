package com.ascent.test;

import com.ascent.util.Ftp;
import com.ascent.util.FtpUtil;
import org.testng.annotations.Test;

import java.io.File;

/**
 * @author bruce
 * @date 19-3-22
 */
public class FileUploadTest {


    @Test
    public static void test() throws Exception {
        Ftp f = new Ftp();
        f.setIpAddr("139.9.69.205");
        f.setUserName("bruce");
        f.setPwd("qertu1014");
        FtpUtil.connectFtp(f);
        File file = new File("/home/bruce/Desktop/aonaotu-download.png");
        System.out.println(file.toString());
        FtpUtil.upload(file);//把文件上传在ftp上
        System.out.println("上传文件完成。。。。");
    }
}
