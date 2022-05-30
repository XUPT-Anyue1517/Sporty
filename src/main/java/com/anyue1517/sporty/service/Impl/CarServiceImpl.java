package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.entity.Car;
import com.anyue1517.sporty.mapper.CarMapper;
import com.anyue1517.sporty.service.CarService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl extends ServiceImpl<CarMapper, Car> implements CarService {
}
