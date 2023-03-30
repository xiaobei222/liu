package com.qfedu.aihuigou.mapper;

import com.qfedu.aihuigou.pojo.Brand;
import java.util.List;

public interface BrandMapper {
    int deleteByPrimaryKey(Integer brandId);

    int insert(Brand record);

    Brand selectByPrimaryKey(Integer brandId);

    List<Brand> selectAll();

    int updateByPrimaryKey(Brand record);

    List<Brand> selectByBrandToCategoryId(int categoryId);
}