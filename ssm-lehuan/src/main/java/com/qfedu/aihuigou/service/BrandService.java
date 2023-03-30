package com.qfedu.aihuigou.service;

import com.qfedu.aihuigou.pojo.Brand;

import java.util.List;

public interface BrandService {
    List<Brand> findBrandToCategoryId(int categoryId);
}
