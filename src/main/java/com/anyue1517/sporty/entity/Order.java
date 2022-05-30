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

    //id
    private Integer id;

    //用户id
    private Integer customerId;

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
