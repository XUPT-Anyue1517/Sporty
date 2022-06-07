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
    private Long number;

    //用户id
    private Long customerId;

    //商品名称
    private String name;

    //商品数量
    private Integer count;

    //支付方式 微信 支付宝 银行卡
    private String payWay;

    //门店地址
    private String carStore;

    //单价
    private Double price;

    //总价
    private Double totalPrice;

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
