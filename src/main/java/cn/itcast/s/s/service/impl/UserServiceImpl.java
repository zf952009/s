package cn.itcast.s.s.service.impl;

import cn.itcast.s.s.bean.User;
import cn.itcast.s.s.mapper.UserMapper;
import cn.itcast.s.s.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userService")
@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED, readOnly = false)
public class UserServiceImpl implements UserService {


    @Autowired
    @Qualifier("userMapper")
    private UserMapper userMapper;
    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }
}
