package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Refit;
import com.anyue1517.sporty.entity.RefitBrand;
import com.anyue1517.sporty.service.RefitBrandService;
import com.anyue1517.sporty.service.RefitService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/refitbrand")
public class RefitBrandController {

    private RefitBrandService refitBrandService;

    @Autowired
    public void setRefitBandService(RefitBrandService refitBrandService) {
        this.refitBrandService = refitBrandService;
    }

    /**
     * 改装品牌分页查询
     *
     * @param pageNum
     * @param pageSize
     * @param search
     * @return
     */
    @GetMapping
    public Result<?> page(int pageNum, int pageSize, String search) {
        //构造分页构造器
        Page<RefitBrand> pageInfo = new Page<>(pageNum, pageSize);
        //构造条件构造器
        LambdaQueryWrapper<RefitBrand> queryWrapper = new LambdaQueryWrapper<>();
        //添加模糊查询
        queryWrapper.like(StringUtils.isNotEmpty(search), RefitBrand::getName, search);
        //添加排序条件
        queryWrapper.orderByDesc(RefitBrand::getUpdateTime);
        //开始分页查询
        refitBrandService.page(pageInfo, queryWrapper);
        return Result.success(pageInfo);
    }

    /**
     * 新增改装品牌信息
     *
     * @param refitBrand
     * @return
     */
    @PostMapping
    public Result<?> add(@RequestBody RefitBrand refitBrand) {

        refitBrandService.save(refitBrand);
        return Result.success();
    }

    /**
     * 修改改装品牌信息
     *
     * @param refitBrand
     * @return
     */
    @PutMapping
    public Result<?> update(@RequestBody RefitBrand refitBrand) {

        refitBrandService.updateById(refitBrand);
        return Result.success();
    }


    /**
     * 删除改装品牌信息
     *
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable long id) {
        refitBrandService.removeById(id);
        return Result.success();
    }


}
