package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.entity.OrderDetails;
import com.anyue1517.sporty.mapper.OrderDetailsMapper;
import com.anyue1517.sporty.service.OrderDetailsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailsServiceImpl extends ServiceImpl<OrderDetailsMapper, OrderDetails> implements OrderDetailsService {
}
