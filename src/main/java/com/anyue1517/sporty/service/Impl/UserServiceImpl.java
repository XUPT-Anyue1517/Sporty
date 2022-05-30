package com.anyue1517.sporty.service.Impl;

import com.anyue1517.sporty.entity.User;
import com.anyue1517.sporty.mapper.UserMapper;
import com.anyue1517.sporty.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
}
