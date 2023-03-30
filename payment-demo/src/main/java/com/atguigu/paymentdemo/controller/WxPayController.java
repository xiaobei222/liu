package com.atguigu.paymentdemo.controller;


import com.atguigu.paymentdemo.service.WxPayService;
import com.atguigu.paymentdemo.value.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.io.IOException;
import java.util.Map;

@CrossOrigin//跨域
@RestController
@RequestMapping("/api/wx-pay")
@Api(tags = "网站微信API")
@Slf4j
public class WxPayController {

    @Resource
    private WxPayService wxPayService;
    @ApiOperation("调用统一下单API，生成支付二维码")
    @PostMapping("native/{productId}")
    public R nativePay(@PathVariable Long productId) throws IOException {
        log.info("发起支付请求");
        //返回支付二维码连接和订单号
        Map<String, Object> map =  wxPayService.nativePay(productId);


        return R.ok().setData(map);
    }

}
