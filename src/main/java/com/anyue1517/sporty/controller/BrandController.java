package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Brand;
import com.anyue1517.sporty.entity.User;
import com.anyue1517.sporty.service.BrandService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/brand")
public class BrandController {

    private BrandService brandService;

    @Autowired
    public void setBrandService(BrandService brandService) {
        this.brandService = brandService;
    }


    /**
     * 品牌信息的分页查询
     *
     * @param pageNum
     * @param pageSize
     * @param search
     * @return
     */
    @GetMapping
    public Result<?> page(@RequestParam(defaultValue = "1") Integer pageNum,
                          @RequestParam(defaultValue = "5") Integer pageSize,
                          @RequestParam(defaultValue = "") String search) {

        //构造分页构造器
        Page<Brand> pageInfo = new Page<>(pageNum,pageSize);
        //构造条件构造器
        LambdaQueryWrapper<Brand> queryWrapper = new LambdaQueryWrapper<>();
        //添加过滤条件（用中文名进行模糊查询）
        queryWrapper.like(StringUtils.isEmpty(search), Brand::getChineseName, search);
        queryWrapper.orderByDesc(Brand::getUpdateTime);
        //执行查询
        Page<Brand> brandPage = brandService.page(pageInfo, queryWrapper);
        return Result.success(brandPage);

    }


    /**
     * 新增品牌
     *
     * @param brand
     * @return
     */
    @PostMapping
    public Result<?> save(@RequestBody Brand brand) {

        brandService.save(brand);
        return Result.success();
    }


    /**
     * 修改品牌
     *
     * @param brand
     * @return
     */
    @PutMapping
    public Result<?> update(@RequestBody Brand brand) {

        brandService.updateById(brand);
        return Result.success();
    }

    /**
     * 删除品牌信息
     *
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    public Result<?> del(@PathVariable int id) {
        brandService.removeById(id);
        return Result.success();
    }


}
