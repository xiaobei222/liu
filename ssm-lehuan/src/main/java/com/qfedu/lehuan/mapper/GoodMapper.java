package com.qfedu.lehuan.mapper;

import com.qfedu.lehuan.pojo.Good;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodMapper {
    int deleteByPrimaryKey(Integer goodId);

    int insert(Good record);

    Good selectByPrimaryKey(Integer goodId);

    List<Good> selectAll();

    int updateByPrimaryKey(Good record);

    //通过不用条件查询商品列表信息如果这个条件不传递，请使用-1表示
    // categoryId分类id brandId二级id
    List<Good> selectGoodByCategoryIdOrBrandId(@Param("categoryId") int categoryId,@Param("brandId") int Brand);
}