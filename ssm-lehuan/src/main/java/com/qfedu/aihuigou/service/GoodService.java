package com.qfedu.aihuigou.service;

import com.qfedu.aihuigou.pojo.Cart;
import com.qfedu.aihuigou.pojo.Good;

import java.util.List;

public interface GoodService {

    List<Good> findGoodByCategoryOrBrandId(int categoryId,int brandId);

    Good getGoodToId(int goodId);

    boolean addToCar(Cart cart);
}
