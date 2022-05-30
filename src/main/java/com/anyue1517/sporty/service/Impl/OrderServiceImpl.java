package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.entity.Order;
import com.anyue1517.sporty.mapper.OrderMapper;
import com.anyue1517.sporty.service.OrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl extends ServiceImpl<OrderMapper, Order> implements OrderService {
}
