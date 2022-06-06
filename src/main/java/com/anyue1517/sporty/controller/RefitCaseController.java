package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.RefitCase;
import com.anyue1517.sporty.service.RefitCaseService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/refitcase")
public class RefitCaseController {

    private RefitCaseService refitCaseService;
    @Autowired
    public void setRefitCaseService(RefitCaseService refitCaseService) {
        this.refitCaseService = refitCaseService;
    }
    /**
     * 客户端数据显示
     * @param pageNum
     * @param pageSize
     * @return
     */
    @GetMapping
    public Result<?> page(int pageNum, int pageSize) {
        //构造分页构造器
        Page<RefitCase> pageInfo = new Page<>(pageNum, pageSize);
        //构造条件构造器
        LambdaQueryWrapper<RefitCase> queryWrapper = new LambdaQueryWrapper<>();
        //添加排序条件
        queryWrapper.orderByDesc(RefitCase::getUpdateTime);
        //开始分页查询
        refitCaseService.page(pageInfo, queryWrapper);
        return Result.success(pageInfo);
    }

    /**
     * 改装资讯的更新操作
     * @param refitCase
     * @return
     */
    @PutMapping
    public Result<?> update(@RequestBody RefitCase refitCase){
        refitCaseService.updateById(refitCase);
        return Result.success();
    }

    /**
     * 改装咨询的插入操作
     * @param refitCase
     * @return
     */
    @PostMapping
    public Result<?> insert(@RequestBody RefitCase refitCase){
        refitCaseService.save(refitCase);
        return Result.success();
    }

    /**
     * 改装咨询的删除操作
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable long id){
        refitCaseService.removeById(id);
        return Result.success();
    }
}
