package com.qfedu.lehuan.service.impl;

import com.qfedu.lehuan.mapper.BrandMapper;
import com.qfedu.lehuan.pojo.Brand;
import com.qfedu.lehuan.service.BrandService;
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
