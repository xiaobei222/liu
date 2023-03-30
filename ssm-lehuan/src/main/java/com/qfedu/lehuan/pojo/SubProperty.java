package com.qfedu.lehuan.pojo;


import java.util.Objects;

//这个类是对应infoDetail这张便主要是用来作为评估步骤中map集合value值的泛型类
public class SubProperty {
    private Integer subPropertyId;
    private String subPropertyName;
    private String subPropertyDesc;
    private ParProperty parProperty;//表与表之间的一对一关系

    public SubProperty() {
    }

    @Override
    public String toString() {
        return "SubProperty{" +
                "subPropertyId=" + subPropertyId +
                ", subPropertyName='" + subPropertyName + '\'' +
                ", subPropertyDesc='" + subPropertyDesc + '\'' +
                ", parProperty=" + parProperty +
                '}';
    }

    public SubProperty(Integer subPropertyId, String subPropertyName, String subPropertyDesc, ParProperty parProperty) {
        this.subPropertyId = subPropertyId;
        this.subPropertyName = subPropertyName;
        this.subPropertyDesc = subPropertyDesc;
        this.parProperty = parProperty;
    }

    public Integer getSubPropertyId() {
        return subPropertyId;
    }

    public void setSubPropertyId(Integer subPropertyId) {
        this.subPropertyId = subPropertyId;
    }

    public String getSubPropertyName() {
        return subPropertyName;
    }

    public void setSubPropertyName(String subPropertyName) {
        this.subPropertyName = subPropertyName;
    }

    public String getSubPropertyDesc() {
        return subPropertyDesc;
    }

    public void setSubPropertyDesc(String subPropertyDesc) {
        this.subPropertyDesc = subPropertyDesc;
    }

    public ParProperty getParProperty() {
        return parProperty;
    }

    public void setParProperty(ParProperty parProperty) {
        this.parProperty = parProperty;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SubProperty that = (SubProperty) o;
        return Objects.equals(subPropertyId, that.subPropertyId) && Objects.equals(subPropertyName, that.subPropertyName) && Objects.equals(subPropertyDesc, that.subPropertyDesc) && Objects.equals(parProperty, that.parProperty);
    }

    @Override
    public int hashCode() {
        return Objects.hash(subPropertyId, subPropertyName, subPropertyDesc, parProperty);
    }
}
