package com.qfedu.lehuan.pojo;

public class SystemParam {
    private int  paramId;
    private String  paramName;
    private  String paramValue;

    public SystemParam() {
    }

    public SystemParam(int paramId, String paramName, String paramValue) {
        this.paramId = paramId;
        this.paramName = paramName;
        this.paramValue = paramValue;
    }

    @Override
    public String toString() {
        return "SystemParam{" +
                "paramId=" + paramId +
                ", paramName='" + paramName + '\'' +
                ", paramValue='" + paramValue + '\'' +
                '}';
    }

    public int getParamId() {
        return paramId;
    }

    public void setParamId(int paramId) {
        this.paramId = paramId;
    }

    public String getParamName() {
        return paramName;
    }

    public void setParamName(String paramName) {
        this.paramName = paramName;
    }

    public String getParamValue() {
        return paramValue;
    }

    public void setParamValue(String paramValue) {
        this.paramValue = paramValue;
    }
}
