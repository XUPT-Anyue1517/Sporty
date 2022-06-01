package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Refit;
import com.anyue1517.sporty.service.RefitService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/refit")
public class RefitController {

    private RefitService refitService;

    @Autowired
    public void setRefitService(RefitService refitService) {
        this.refitService = refitService;
    }

    /**
     * 改件信息分页查询
     *
     * @param pageNum
     * @param pageSize
     * @param search
     * @return
     */
    @GetMapping
    public Result<?> page(int pageNum, int pageSize, String search) {
        //构造分页构造器
        Page<Refit> pageInfo = new Page<>(pageNum, pageSize);
        //构造条件构造器
        LambdaQueryWrapper<Refit> queryWrapper = new LambdaQueryWrapper<>();
        //添加模糊查询
        queryWrapper.like(StringUtils.isNotEmpty(search), Refit::getName, search);
        //添加排序条件
        queryWrapper.orderByDesc(Refit::getUpdateTime);
        //开始分页查询
        refitService.page(pageInfo, queryWrapper);
        return Result.success(pageInfo);
    }

    /**
     * 新增改件信息
     *
     * @param refit
     * @return
     */
    @PostMapping
    public Result<?> add(@RequestBody Refit refit) {

        refitService.save(refit);
        return Result.success();
    }

    /**
     * 修改改件信息
     *
     * @param refit
     * @return
     */
    @PutMapping
    public Result<?> update(@RequestBody Refit refit) {

        refitService.updateById(refit);
        return Result.success();
    }


    /**
     * 删除改件信息
     *
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable long id) {
        refitService.removeById(id);
        return Result.success();
    }


}
