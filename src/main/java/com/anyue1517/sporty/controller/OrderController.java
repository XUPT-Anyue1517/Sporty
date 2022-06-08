package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.BaseContext;
import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Orders;
import com.anyue1517.sporty.service.OrdersService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/order")
public class OrderController {

    private OrdersService ordersService;

    @Autowired
    public void setOrdersService(OrdersService ordersService) {
        this.ordersService = ordersService;
    }

    /**
     * 订单分页查询
     *
     * @param pageNumber
     * @param pageSize
     * @param search
     * @return
     */
    @GetMapping
    public Result<?> page(@RequestParam(defaultValue = "1") Integer pageNumber,
                          @RequestParam(defaultValue = "5") Integer pageSize,
                          @RequestParam(defaultValue = "") String search) {

        Page<Orders> pageInfo = new Page<>(pageNumber, pageSize);
        LambdaQueryWrapper<Orders> lambdaQueryWrapper = new LambdaQueryWrapper<>();

        lambdaQueryWrapper.like(StringUtils.isNotEmpty(search), Orders::getNumber, search);

        lambdaQueryWrapper.orderByDesc(Orders::getPayTime);

        ordersService.page(pageInfo, lambdaQueryWrapper);

        return Result.success(pageInfo);
    }

    /**
     * 用户下订单操作
     *
     * @param order
     * @return
     */
    @PostMapping
    public Result<?> submit(@RequestBody Orders order) {

        //基于ThreadLocal封装工具类,获取用户id
        //Long customerId = BaseContext.getCurrentId();
        //order.setCustomerId(customerId);

        if (order.getTotalPrice() == null || order.getPrice() == null){
            return Result.error("-1", "该车暂无报价！");
        }
        //获取唯一id
        long id = IdWorker.getId();

        //使用唯一id作为订单号注入
        order.setNumber(id);

        ordersService.save(order);
        return Result.success();
    }
}
