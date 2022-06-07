package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.BaseContext;
import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Order;
import com.anyue1517.sporty.service.OrderService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
    public Result<?> submit(@RequestBody Order order){

        Long customerId = BaseContext.getCurrentId();
        Order order1 = new Order();
        double totalPirce = orderService.pay(order.getCount(), order.getPrice());
        order.setTotalPrice(totalPirce);
        order.setCustomerId(customerId);
        order.setNumber(IdWorker.getId());
        orderService.save(order);
        return Result.success();
    }
}
