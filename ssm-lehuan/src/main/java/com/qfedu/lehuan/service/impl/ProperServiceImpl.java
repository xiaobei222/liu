package com.qfedu.lehuan.service.impl;

import com.qfedu.lehuan.mapper.GoodMapper;
import com.qfedu.lehuan.mapper.SubPropertyMapper;
import com.qfedu.lehuan.pojo.Good;
import com.qfedu.lehuan.pojo.ParProperty;
import com.qfedu.lehuan.pojo.SubProperty;
import com.qfedu.lehuan.service.ProperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class ProperServiceImpl implements ProperService {
    @Autowired
    private SubPropertyMapper subPropertyMapper;
    @Autowired
    private GoodMapper goodMapper;
    public List<Map<ParProperty, List<SubProperty>>> getMapListToGoodId(int good) {
        List<Map<ParProperty, List<SubProperty>>> mapList = new ArrayList<Map<ParProperty, List<SubProperty>>>();
        List<SubProperty> subPropertyList = subPropertyMapper.selectSubPropertyToGoodId(good);
       /*********************这部分相当于查询数据库中的basic_info表中得到所有数据
        得到parproperList，这里是通过处理去重等操作得到的。没有查询数据库*****/
        List<ParProperty> parPropertyList = new ArrayList<ParProperty>();
        for (SubProperty subProperty : subPropertyList) {
            parPropertyList.add(subProperty.getParProperty());
        }
        //去重复，重复通过对象比较进行去重，这里就不对。要保证id跟name是一个相同的对象
        //需要重写equlles方法和hashCode方法
        parPropertyList = parPropertyList.stream().distinct().collect(Collectors.toList());
        /***********************************************************************/
        //在这个map中取值
        Map<ParProperty, List<SubProperty>> basicMap = new HashMap<ParProperty, List<SubProperty>>();
        for (ParProperty parProperty : parPropertyList) {
            //每一个parproperty都对应的是Map中的 一个key，这个都对应一个subproperty的集合
            //没循环一次就得到一个key，意味着有 一个新的集合
            List<SubProperty> subList = new ArrayList<SubProperty>();
            for (SubProperty subProperty : subPropertyList) {
                if(parProperty.getParPropertyId()==subProperty.getParProperty().getParPropertyId()){
                subList.add(subProperty);
                }
            }
            //到这里说明当前parproperty中对应的值都找完了
            basicMap.put(parProperty,subList);

        }
        Map<ParProperty, List<SubProperty>> map1 = new TreeMap<ParProperty, List<SubProperty>>();
        Map<ParProperty, List<SubProperty>> map2 = new TreeMap<ParProperty, List<SubProperty>>();
        Map<ParProperty, List<SubProperty>> map3 = new TreeMap<ParProperty, List<SubProperty>>();
        List<SubProperty> list1 = new ArrayList<SubProperty>();
        List<SubProperty> list2 = new ArrayList<SubProperty>();
        List<SubProperty> list3 = new ArrayList<SubProperty>();

        for (ParProperty parProperty :basicMap.keySet()){
            if (parProperty.getParPropertyId()<7||parProperty.getParPropertyId()==13){
            map1.put(parProperty,basicMap.get(parProperty));
            }else if (parProperty.getParPropertyId()==7){
            map2.put(parProperty,basicMap.get(parProperty));
            }else if(parProperty.getParPropertyId()>7&&parProperty.getParPropertyId()!=13){
            map3.put(parProperty,basicMap.get(parProperty));
            }
        }
        mapList.add(map1);
        mapList.add(map2);
        mapList.add(map3);
        return mapList;
    }

    @Override
    public int getPriceToGood(int goodId, int[] subTypeIds) {
        //获取到当前的商品信息
        Good good = goodMapper.selectByPrimaryKey(goodId);
        int price = subPropertyMapper.selectGoodZcPrice(subTypeIds);
        int basicPrice =good.getGoodCost()-price;

        if(basicPrice<good.getGoodMinPrice()){
            basicPrice=good.getGoodMinPrice();
        }
        //通过ParseUtils工具类转为集合
       // return ParseUtils.parseIntToList(basicPrice);
        return basicPrice;
    }
}

