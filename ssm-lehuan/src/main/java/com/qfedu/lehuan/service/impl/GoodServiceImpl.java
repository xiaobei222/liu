package com.qfedu.lehuan.service.impl;

import com.qfedu.lehuan.mapper.GoodMapper;
import com.qfedu.lehuan.pojo.Cart;
import com.qfedu.lehuan.pojo.Good;
import com.qfedu.lehuan.service.GoodService;
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
