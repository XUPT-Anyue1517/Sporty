package com.anyue1517.sporty.entity;

import lombok.Data;

/**
 * 汽车品牌
 */
@Data
public class Brand {

    //id
    private Integer id;

    //车标
    private String logo;

    //中文名
    private String chineseName;

    //英文名
    private String englishName;

    //品牌国家
    private String country;

    //品牌介绍
    private String intro;

}

