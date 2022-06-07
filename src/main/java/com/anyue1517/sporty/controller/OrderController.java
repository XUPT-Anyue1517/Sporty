package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Order;
import com.anyue1517.sporty.service.OrderService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;

@RestController
@RequestMapping("/order")
public class OrderController {

    private OrderService orderService;
    @Autowired
    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    /**
     * 订单分页查询
     * @param pageNumber
     * @param pageSize
     * @param search
     * @return
     */
    @GetMapping
    public Result<?> page(int pageNumber,int pageSize,String search){

        Page<Order> pageInfo = new Page<>(pageNumber,pageSize);
        LambdaQueryWrapper<Order> lambdaQueryWrapper = new LambdaQueryWrapper<>();

        lambdaQueryWrapper.like(StringUtils.isNotEmpty(search),Order::getNumber,search);

        lambdaQueryWrapper.orderByDesc(Order::getPayTime);

        orderService.page(pageInfo,lambdaQueryWrapper);

        return Result.success(pageInfo);
    }

    @PostMapping
    public Result<?> pay(Integer count, double price){
        return Result.success(orderService.pay(count,price));
    }

}
