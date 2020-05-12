package com.shadow.Application;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.shadow.summer.*")
@MapperScan("com.shadow.summer.Dao")
public class ShadowtreeApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {

        SpringApplication.run(ShadowtreeApplication.class, args);

    }
    //重写configure方法
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(ShadowtreeApplication.class);
    }
}
