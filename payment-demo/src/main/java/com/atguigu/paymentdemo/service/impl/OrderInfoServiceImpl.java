package com.atguigu.paymentdemo.service.impl;

import com.atguigu.paymentdemo.entity.OrderInfo;
import com.atguigu.paymentdemo.entity.Product;
import com.atguigu.paymentdemo.enums.OrderStatus;
import com.atguigu.paymentdemo.mapper.OrderInfoMapper;
import com.atguigu.paymentdemo.mapper.ProductMapper;
import com.atguigu.paymentdemo.service.OrderInfoService;
import com.atguigu.paymentdemo.util.OrderNoUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class OrderInfoServiceImpl extends ServiceImpl<OrderInfoMapper, OrderInfo> implements OrderInfoService {

    @Resource
    private ProductMapper productMapper;

    @Override
    public OrderInfo createOrderByProductId(Long productId) {

        //查找已存在 但未支付得订单
        OrderInfo orderInfo = this.getNoPayOrderByProductId(productId);
        if (orderInfo != null) {
            return orderInfo;
        }
        //获取商品信息
        Product product = productMapper.selectById(productId);

        //生成订单
        orderInfo = new OrderInfo();
        orderInfo.setTitle(product.getTitle());
        orderInfo.setOrderNo(OrderNoUtils.getOrderNo());//订单号
        orderInfo.setProductId(productId);
        orderInfo.setTotalFee(product.getPrice());//单位为分
        orderInfo.setOrderStatus(OrderStatus.NOTPAY.getType());
        baseMapper.insert(orderInfo);
        //TODO:存入数据库

        return orderInfo;
    }
    /*
    * 存储订单二维码
    * */
    @Override
    public void saveCodeUrl(String orderNo, String codeUrl) {

        QueryWrapper<OrderInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("order_on",orderNo);

        OrderInfo orderInfo  = new OrderInfo();
        orderInfo.setCodeUrl(codeUrl);

        baseMapper.update(orderInfo,queryWrapper);

    }

    /*
     * 根据商品id查询未支付订单
     * 防止重复创建浪费资源
     * */
    private OrderInfo getNoPayOrderByProductId(Long productId) {

        QueryWrapper<OrderInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("product_id", productId);
        queryWrapper.eq("order_status", OrderStatus.NOTPAY.getType());
//        queryWrapper.eq("user_id",userId)
        OrderInfo orderInfo = baseMapper.selectOne(queryWrapper);
        return orderInfo;
    }
}
