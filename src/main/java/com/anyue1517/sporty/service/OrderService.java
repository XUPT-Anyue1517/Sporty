package com.anyue1517.sporty.service;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Order;
import com.baomidou.mybatisplus.extension.service.IService;

import java.math.BigDecimal;

public interface OrderService extends IService<Order> {
    public double pay(Integer count, double price);
}
