package com.qfedu.aihuigou.pojo;

//这个封装类对应的是baisinfo表，主要是用来作为评估步骤的Map及和的键

import java.io.Serializable;
import java.util.Comparator;
import java.util.Objects;

//实现Serializable接口序列化进行排序
public class ParProperty implements Serializable, Comparable<ParProperty> {

    private Integer parPropertyId;
    private String   parPropertyName;


    public Integer getParPropertyId() {
        return parPropertyId;
    }

    public void setParPropertyId(Integer parPropertyId) {
        this.parPropertyId = parPropertyId;
    }

    public String getParPropertyName() {
        return parPropertyName;
    }

    public void setParPropertyName(String parPropertyName) {
        this.parPropertyName = parPropertyName;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ParProperty that = (ParProperty) o;
        return Objects.equals(parPropertyId, that.parPropertyId) && Objects.equals(parPropertyName, that.parPropertyName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(parPropertyId, parPropertyName);
    }

    //进行排序
    @Override
    public int compareTo(ParProperty o) {
        return this.getParPropertyId() - o.parPropertyId;
    }
}
