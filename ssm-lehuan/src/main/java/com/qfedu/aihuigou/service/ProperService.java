package com.qfedu.aihuigou.service;

import com.qfedu.aihuigou.pojo.ParProperty;
import com.qfedu.aihuigou.pojo.SubProperty;

import java.util.List;
import java.util.Map;

public interface ProperService {

    public List<Map<ParProperty,List<SubProperty>>> getMapListToGoodId(int good);

    int getPriceToGood(int goodId, int[] subTypeIds);
}
