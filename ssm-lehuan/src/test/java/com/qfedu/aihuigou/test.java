package com.qfedu.aihuigou;


import com.qfedu.lehuan.service.ProperService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-config.xml")
public class test {
    @Autowired
    private ProperService properService;
    @Test
    public void fun(){
        properService.getMapListToGoodId(1);
    }

}
