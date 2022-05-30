package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.entity.Series;
import com.anyue1517.sporty.mapper.SeriesMapper;
import com.anyue1517.sporty.service.SeriesService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class SeriesServiceImpl extends ServiceImpl<SeriesMapper, Series> implements SeriesService {
}
