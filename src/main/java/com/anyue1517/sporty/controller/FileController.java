package com.anyue1517.sporty.controller;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import com.anyue1517.sporty.common.Result;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

@RestController
@RequestMapping("/files")
public class FileController {

    @PostMapping("/upload")
    public Result<?> upload(MultipartFile file) throws IOException {
        String originalFilename = file.getOriginalFilename();   //获取源文件名称
        //定义文件唯一标识
        String flag = IdUtil.fastSimpleUUID();

        String rootFilePath = System.getProperty("user.dir") + "/springboot/src/main/resources/files/" + flag + "$&$&" + originalFilename;
                                                                //获取上传的路径
        FileUtil.writeBytes(file.getBytes(),rootFilePath);      //把文件写入到路径中
        return Result.success();

    }

    @GetMapping("/{flag}")
    public Result<?> getFiles(HttpServletResponse response){
        OutputStream os;    //新建一个输出流对象
        String basePath = System.getProperty("user.dir") + "/springboot/src/main/resources/files/";
        List<String> fileNames = FileUtil.listFileNames(basePath);  //获取所有的文件名称
        return Result.success();
    }

}
