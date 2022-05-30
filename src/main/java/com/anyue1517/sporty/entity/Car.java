package com.anyue1517.sporty.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * 汽车
 */
@Data
public class Car {

    //id
    private Integer id;

    //系列id
    private String seriesId;

    //车名
    private String name;

    //系列类型
    private String type;

    //颜色
    private String color;

    //定价
    private BigDecimal price;

    //售价
    private BigDecimal salePrice;

    //库存
    private Integer repertory;

    //创建时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
}
