package com.anyue1517.sporty.controller;

import com.anyue1517.sporty.common.Result;
import com.anyue1517.sporty.entity.Brand;
import com.anyue1517.sporty.entity.Culture;
import com.anyue1517.sporty.service.CultureService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/culture")
public class CultureController {

    private CultureService cultureService;

    @Autowired
    public void setCultureService(CultureService cultureService){
        this.cultureService = cultureService;
    }

    /**
     * 改装文化的分页查询
     * qianpuyu
     */
    @GetMapping
    public Result<?> page(@RequestParam(defaultValue = "1") Integer pageNum,
                          @RequestParam(defaultValue = "5") Integer pageSize,
                          @RequestParam(defaultValue = "") String search) {


        Page<Culture> pageInfo = new Page<>(pageNum,pageSize);
        LambdaQueryWrapper<Culture> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(search), Culture::getKind, search);
        queryWrapper.orderByDesc(Culture::getUpdateTime);
        Page<Culture> culturePage = cultureService.page(pageInfo, queryWrapper);
        return Result.success(culturePage);
    }


}
