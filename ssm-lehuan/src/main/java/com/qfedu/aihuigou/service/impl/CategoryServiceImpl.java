package com.qfedu.aihuigou.service.impl;

import com.qfedu.aihuigou.mapper.CategoryMapper;
import com.qfedu.aihuigou.pojo.Category;
import com.qfedu.aihuigou.pojo.CategoryExample;
import com.qfedu.aihuigou.service.CategoryService;
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
