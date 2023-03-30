package com.qfedu.lehuan.service;

import com.qfedu.lehuan.pojo.Cart;
import com.qfedu.lehuan.pojo.Good;

import java.util.List;

public interface GoodService {

    List<Good> findGoodByCategoryOrBrandId(int categoryId,int brandId);

    Good getGoodToId(int goodId);

    boolean addToCar(Cart cart);
}
