package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.CarStore;
import com.anyue1517.sporty.service.CarStoreService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/carstore")
public class CarStoreController {

    private CarStoreService carStoreService;

    @Autowired
    public void setCarStoreService(CarStoreService carStoreService) {
        this.carStoreService = carStoreService;
    }

    /**
     * 新增4s店信息
     *
     * @param carStore
     * @return
     */
    @PostMapping
    public Result<?> add(@RequestBody CarStore carStore) {

        carStoreService.save(carStore);
        return Result.success();
    }


    /**
     * 4s店信息分页查询
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

        //配置分页配置
        Page<CarStore> pageInfo = new Page<>(pageNum, pageSize);
        //配置条件配置
        LambdaQueryWrapper<CarStore> queryWrapper = new LambdaQueryWrapper();
        //添加过滤条件(使用门店名称搜索)
        queryWrapper.like(StringUtils.isNotBlank(name), CarStore::getName, name);
        //添加排序条件
        queryWrapper.orderByDesc(CarStore::getUpdateTime);

        //执行查询
        carStoreService.page(pageInfo, queryWrapper);
        return Result.success(pageInfo);
    }


    /**
     * 修改4s店信息
     *
     * @param carStore
     * @return
     */
    @PutMapping
    public Result<?> update(@RequestBody CarStore carStore) {
        carStoreService.updateById(carStore);
        return Result.success();
    }

    /**2
     * 删除4s店信息
     *
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable long id) {
        carStoreService.removeById(id);
        return Result.success();
    }


}
