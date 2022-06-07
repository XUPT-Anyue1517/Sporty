package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Order;
import com.anyue1517.sporty.mapper.OrderMapper;
import com.anyue1517.sporty.service.OrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class OrderServiceImpl extends ServiceImpl<OrderMapper, Order> implements OrderService {
    @Override
    public double pay(Integer count, double price) {
        return count*price;
    }
}
