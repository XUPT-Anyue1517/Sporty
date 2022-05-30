package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.entity.Brand;
import com.anyue1517.sporty.mapper.BrandMapper;
import com.anyue1517.sporty.service.BrandService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class BrandServiceImpl extends ServiceImpl<BrandMapper, Brand> implements BrandService {
}
