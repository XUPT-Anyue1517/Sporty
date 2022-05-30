package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.entity.Employee;
import com.anyue1517.sporty.mapper.EmployeeMapper;
import com.anyue1517.sporty.service.EmployeeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements EmployeeService {
}
