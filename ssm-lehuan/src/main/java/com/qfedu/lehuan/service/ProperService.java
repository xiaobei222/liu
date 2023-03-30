package com.qfedu.lehuan.service;

import com.qfedu.lehuan.pojo.ParProperty;
import com.qfedu.lehuan.pojo.SubProperty;

import java.util.List;
import java.util.Map;

public interface ProperService {

    public List<Map<ParProperty,List<SubProperty>>> getMapListToGoodId(int good);

    int getPriceToGood(int goodId, int[] subTypeIds);
}
