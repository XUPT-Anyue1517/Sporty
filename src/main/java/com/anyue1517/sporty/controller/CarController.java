package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Car;
import com.anyue1517.sporty.service.CarService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@RequestMapping("/car")
public class CarController {

    private CarService carService;

    @Autowired
    public void setCarService(CarService carService) {
        this.carService = carService;
    }

    /**
     * 车辆信息的分页查询
     *
     * @param pageNum
     * @param pageSize
     * @param name
     * @return
     */
    @GetMapping
    public Result<?> page(@RequestParam(defaultValue = "1") Integer pageNum,
                          @RequestParam(defaultValue = "5") Integer pageSize,
                          @RequestParam(defaultValue = "") String name) {

        //构造分页构造器
        Page<Car> pageInfo = new Page<>(pageNum, pageSize);
        //构造条件构造器
        LambdaQueryWrapper<Car> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(name), Car::getName, name);
        //添加排序条件
        queryWrapper.orderByDesc(Car::getUpdateTime);

        //开始分页查询
        carService.page(pageInfo, queryWrapper);

        return Result.success(pageInfo);
    }

    /**
     * 车辆信息添加
     *
     * @param car
     * @return
     */
    @PostMapping
    public Result<?> add(@RequestBody Car car) {
        carService.save(car);
        return Result.success();
    }


    /**
     * 更新车辆信息
     *
     * @param car
     * @return
     */
    @PutMapping
    public Result<?> update(@RequestBody Car car) {
        carService.updateById(car);
        return Result.success();
    }


    /**
     * 删除车辆信息
     *
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    public Result<?> del(@PathVariable long id) {
        carService.removeById(id);
        return Result.success();
    }


}
