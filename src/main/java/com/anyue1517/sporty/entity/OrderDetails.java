package com.anyue1517.sporty.entity;

import lombok.Data;

/**
 * 订单详情
 */
@Data
public class OrderDetails {

    private static final long serialVersionUID = 1L;

    //id
    private Long id;

    //订单id
    private Integer orderId;

    //汽车id
    private Integer carId;

    //数量
    private Integer carNumber;
}
