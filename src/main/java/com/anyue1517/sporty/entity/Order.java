package com.anyue1517.sporty.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * 订单信息
 */
@Data
public class Order {

    private static final long serialVersionUID = 1L;

    //id
    private Long id;

    //订单号
    private Integer number;

    //用户id
    private Integer customer;

    //商品名称
    private String name;

    //商品数量
    private Integer count;


    //1是车辆订单，2是改建订单
    private Integer state;

    //支付方式 1是微信 2是支付宝 3是银行卡
    private Integer payWay;

    //单价
    private BigDecimal price;

    //总价
    private BigDecimal totalPrice;

    //创建时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    //支付时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime payTime;

    //更新时间
    @TableField(fill = FieldFill.UPDATE)
    private LocalDateTime updateTime;
}
