package com.qfedu.lehuan.pojo;

public class Good {
    private Integer goodId;

    private String goodName;

    private String goodImg;

    private Integer goodCost;

    private Integer goodMinPrice;

    private Integer goodFirstPrice;

    private Integer goodSecondPrice;

    private Integer goodThirdPrice;

    private Integer goodForthPrice;

    private Integer goodFifthPrice;

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName == null ? null : goodName.trim();
    }

    public String getGoodImg() {
        return goodImg;
    }

    public void setGoodImg(String goodImg) {
        this.goodImg = goodImg == null ? null : goodImg.trim();
    }

    public Integer getGoodCost() {
        return goodCost;
    }

    public void setGoodCost(Integer goodCost) {
        this.goodCost = goodCost;
    }

    public Integer getGoodMinPrice() {
        return goodMinPrice;
    }

    public void setGoodMinPrice(Integer goodMinPrice) {
        this.goodMinPrice = goodMinPrice;
    }

    public Integer getGoodFirstPrice() {
        return goodFirstPrice;
    }

    public void setGoodFirstPrice(Integer goodFirstPrice) {
        this.goodFirstPrice = goodFirstPrice;
    }

    public Integer getGoodSecondPrice() {
        return goodSecondPrice;
    }

    public void setGoodSecondPrice(Integer goodSecondPrice) {
        this.goodSecondPrice = goodSecondPrice;
    }

    public Integer getGoodThirdPrice() {
        return goodThirdPrice;
    }

    public void setGoodThirdPrice(Integer goodThirdPrice) {
        this.goodThirdPrice = goodThirdPrice;
    }

    public Integer getGoodForthPrice() {
        return goodForthPrice;
    }

    public void setGoodForthPrice(Integer goodForthPrice) {
        this.goodForthPrice = goodForthPrice;
    }

    public Integer getGoodFifthPrice() {
        return goodFifthPrice;
    }

    public void setGoodFifthPrice(Integer goodFifthPrice) {
        this.goodFifthPrice = goodFifthPrice;
    }
}