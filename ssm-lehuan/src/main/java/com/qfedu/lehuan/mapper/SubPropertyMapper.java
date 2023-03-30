package com.qfedu.lehuan.mapper;

import com.qfedu.lehuan.pojo.SubProperty;

import java.util.List;

public interface SubPropertyMapper {

    List<SubProperty> selectSubPropertyToGoodId(int goodId);
    int selectGoodZcPrice(int[] subTyIds);
}
