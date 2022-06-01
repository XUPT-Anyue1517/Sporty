package com.anyue1517.sporty.entity;

import lombok.Data;

/**
 * 系列信息
 */
@Data
public class Series {

    private static final long serialVersionUID = 1L;

    //id
    private Long id;

    //系列id
    private Integer seriesId;

    //系列名称
    private String seriesName;
}
