package com.anyue1517.sporty.controller;


import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.anyue1517.sporty.common.Result;
import com.baidu.aip.util.Base64Util;
import com.anyue1517.sporty.utils.FileUtil;
import com.anyue1517.sporty.utils.HttpUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

@RestController
@RequestMapping("/carai")
@Slf4j
public class Car {


    @Value("${sporty.path}")
    private String basePath;

    private static final String ip = "http://localhost";

    private static String ImgfilePath = "";
    private static String ImgP = "";

    /**
     * 文件上传方法
     *
     * @param file
     * @return
     * @throws IOException
     */
    @PostMapping("/upload")
    public Result<?> upload(MultipartFile file) throws IOException {
//        log.info(file.toString());
//
//        //原始文件名
//        String originalFilename = file.getOriginalFilename();
//        String suffix = originalFilename.substring(originalFilename.lastIndexOf("."));
//
//        //使用UUID重新生成文件名，防止文件名重复造成文件覆盖
//        String fileName = UUID.randomUUID().toString() + suffix;
//
//        //创建一个目录对象
//        File dir = new File(basePath);
//        if (!dir.exists()) {
//            //目录不存在需要创建
//            dir.mkdir();
//        }
//
//        try {
//            //将临时文件转存到指定位置
//            file.transferTo(new File(basePath + fileName));
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//        return Result.success(fileName);


        String originalFilename = file.getOriginalFilename();   //获取源文件名称
        //定义文件唯一标识
        String flag = IdUtil.fastSimpleUUID();
//        System.out.println("!!!!name:" + originalFilename);

        String rootFilePath = System.getProperty("user.dir") + "/src/main/resources/cars/" + originalFilename;  // + flag + "$&$&"
        //获取上传的路径
        File rootFile = new File(rootFilePath);
        if (!rootFile.getParentFile().exists()) {
            rootFile.getParentFile().mkdirs();
        }
        cn.hutool.core.io.FileUtil.writeBytes(file.getBytes(),rootFilePath);      //把文件写入到路径中
        ImgfilePath = rootFilePath;
        ImgP =  originalFilename;
//        car();
        return Result.success("http://localhost:8080/cars/" + originalFilename);  // 返回结果 url

    }

    /**
     * 文件下载方法
     *
     * @param response
     * @return
     */
    @GetMapping("{flag}")
    public void downLoad(@PathVariable String flag, HttpServletResponse response) {
//
//        try {
//            //输入流，通过输入流来读取文件内容
//            FileInputStream fileInputStream = new FileInputStream(new File(basePath + name));
//            //输出流，通过输出流将文件写回浏览器，在浏览器展示图片
//            ServletOutputStream outputStream = response.getOutputStream();  //通过输出流返回文件
//
//            response.setContentType("image/jpeg");
//
//            int len = 0;
//            byte[] bytes = new byte[1024];
//            while ((len = fileInputStream.read(bytes)) != -1) {
//                outputStream.write(bytes, 0, len);
//                outputStream.flush();
//            }
//
//            //关闭资源
//            outputStream.close();
//            fileInputStream.close();
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

        OutputStream os;  // 新建一个输出流对象
        String basePath = System.getProperty("user.dir") + "/src/main/resources/cars/";  // 定于文件上传的根路径
        List<String> fileNames = cn.hutool.core.io.FileUtil.listFileNames(basePath);  // 获取所有的文件名称
        String fileName = fileNames.stream().filter(name -> name.contains(flag)).findAny().orElse("");  // 找到跟参数一致的文件
        try {
            if (StrUtil.isNotEmpty(fileName)) {
                response.addHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
                response.setContentType("application/octet-stream");
                byte[] bytes = cn.hutool.core.io.FileUtil.readBytes(basePath + fileName);  // 通过文件的路径读取文件字节流
                os = response.getOutputStream();   // 通过输出流返回文件
                os.write(bytes);
                os.flush();
                os.close();
            }
        } catch (Exception e) {
            System.out.println("文件下载失败");
        }

    }



    @PostMapping
    public Result<?> car() {
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/image-classify/v1/car";
        try {
            // 本地文件路径
            String filePath = ImgfilePath;
            byte[] imgData = FileUtil.readFileByBytes(filePath);
            String imgStr = Base64Util.encode(imgData);
            String imgParam = URLEncoder.encode(imgStr, "UTF-8");

            String param = "image=" + imgParam + "&top_num=" + 5 + "&baike_num=" + 1;

            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
            String accessToken = "24.003771a9d3676b7971876f6b7535e56f.2592000.1683531048.282335-30134283";

            String result = HttpUtil.post(url, accessToken, param);
            System.out.println(result);
            return Result.success(result);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
//        Car.car();
    }
}
