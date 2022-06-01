package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.entity.CarStore;
import com.anyue1517.sporty.mapper.CarStoreMapper;
import com.anyue1517.sporty.service.CarStoreService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class CarStoreServiceImpl extends ServiceImpl<CarStoreMapper, CarStore> implements CarStoreService {
}
