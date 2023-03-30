package com.atguigu.paymentdemo;

import com.atguigu.paymentdemo.config.WxPayConfig;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.security.PrivateKey;

@SpringBootTest
class PaymentDemoApplicationTests {

    @Resource
    private WxPayConfig wxPayConfig;



    //测试获取商户得私钥
//    @Test
//    void testGetPrivateKey() {
//        //获取私钥路径
//        String privateKeyPath = wxPayConfig.getPrivateKeyPath();
//        PrivateKey privateKey = wxPayConfig.getPrivateKey(privateKeyPath);
//        System.out.println(privateKey);
//    }

}
