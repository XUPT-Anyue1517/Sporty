package com.anyue1517.sporty;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@ServletComponentScan
@EnableTransactionManagement//开启事务支持
public class SportyApplication {

    public static void main(String[] args) {
        SpringApplication.run(SportyApplication.class, args);
    }

}
