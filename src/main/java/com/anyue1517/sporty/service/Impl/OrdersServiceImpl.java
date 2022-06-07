package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.entity.Orders;
import com.anyue1517.sporty.mapper.OrdersMapper;
import com.anyue1517.sporty.service.OrdersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class OrdersServiceImpl extends ServiceImpl<OrdersMapper, Orders> implements OrdersService {
    //@Override
    //public double pay(Integer count, double price) {
    //    return count * price;
    //}
}
