package com.qfedu.aihuigou.service.impl;

import com.qfedu.aihuigou.mapper.SystemParamMapper;
import com.qfedu.aihuigou.service.SystemParamService;
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
