package com.qfedu.aihuigou.service.impl;

import com.qfedu.aihuigou.mapper.GoodMapper;
import com.qfedu.aihuigou.pojo.Cart;
import com.qfedu.aihuigou.pojo.Good;
import com.qfedu.aihuigou.service.GoodService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class GoodServiceImpl implements GoodService {
    @Autowired
    private GoodMapper goodMapper;
    public List<Good> findGoodByCategoryOrBrandId(int categoryId, int brandId) {
        return goodMapper.selectGoodByCategoryIdOrBrandId(categoryId, brandId);
    }

    public Good getGoodToId(int goodId) {
        return goodMapper.selectByPrimaryKey(goodId);
    }

    @Override
    public boolean addToCar(Cart cart) {

        return false;
    }
}
