package com.anyue1517.sporty.handler;

import com.anyue1517.sporty.common.Result;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

//对加了@Controller注解的方法进行拦截处理
@ControllerAdvice
public class AllExceptionHandler {
    //进行异常处理，处理Exception.class的异常
    @ExceptionHandler(Exception.class)
    @ResponseBody//返回Jason数据
    public Result doException(Exception ex){
        ex.printStackTrace();
        return Result.error("-1","系统异常");
    }
}