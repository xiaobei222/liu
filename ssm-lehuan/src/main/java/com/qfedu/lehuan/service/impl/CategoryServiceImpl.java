package com.qfedu.lehuan.service.impl;

import com.qfedu.lehuan.mapper.CategoryMapper;
import com.qfedu.lehuan.pojo.Category;
import com.qfedu.lehuan.pojo.CategoryExample;
import com.qfedu.lehuan.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryServiceImpl  implements CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;
    public List<Category> findCategoryAll() {
        List<Category> categories = categoryMapper.selectByExample(new CategoryExample());
        return categories;
    }
}
