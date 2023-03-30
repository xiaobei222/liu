package com.atguigu.paymentdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class PaymentDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(PaymentDemoApplication.class, args);
    }

}
