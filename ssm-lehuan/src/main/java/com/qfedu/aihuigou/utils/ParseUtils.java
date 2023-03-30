package com.qfedu.aihuigou.utils;

import java.util.ArrayList;
import java.util.List;


//工具类转为集合
public  class ParseUtils {
    public static List<Integer> parseIntToList(int value){
        List<Integer> list = new ArrayList<>();
        String[] arr = (value + "").split("");
        for (String s : arr) {
            list.add(Integer.parseInt(s));
        }
        return list;
    }
}
