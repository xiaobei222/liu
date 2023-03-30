package com.qfedu.lehuan.service;

import com.qfedu.lehuan.pojo.Brand;

import java.util.List;

public interface BrandService {
    List<Brand> findBrandToCategoryId(int categoryId);
}
