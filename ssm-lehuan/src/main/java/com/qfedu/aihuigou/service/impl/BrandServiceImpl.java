package com.qfedu.aihuigou.service.impl;

import com.qfedu.aihuigou.mapper.BrandMapper;
import com.qfedu.aihuigou.pojo.Brand;
import com.qfedu.aihuigou.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BrandServiceImpl implements BrandService {

    @Autowired
    private BrandMapper brandMapper;
    public List<Brand> findBrandToCategoryId(int categoryId) {

        return brandMapper.selectByBrandToCategoryId(categoryId);
    }
}
