package com.qfedu.lehuan.service.impl;

import com.qfedu.lehuan.mapper.SystemParamMapper;
import com.qfedu.lehuan.service.SystemParamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SystemParamServiceImpl implements SystemParamService {
    @Autowired
    private SystemParamMapper systemParamMapper;
    public String finaParamValueSystem(String paramValue) {
        return systemParamMapper.finaParamValueSystem(paramValue);
    }
}
