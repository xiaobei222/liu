package com.qfedu.aihuigou.mapper;

import com.qfedu.aihuigou.pojo.SubProperty;

import java.util.List;

public interface SubPropertyMapper {

    List<SubProperty> selectSubPropertyToGoodId(int goodId);
    int selectGoodZcPrice(int[] subTyIds);
}
