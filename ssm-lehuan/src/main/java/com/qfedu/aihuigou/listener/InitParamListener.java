package com.qfedu.aihuigou.listener;

import com.qfedu.aihuigou.commons.SystemUtils;
import com.qfedu.aihuigou.mapper.SystemParamMapper;
import com.qfedu.aihuigou.service.SystemParamService;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class InitParamListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent event) {
        ServletContext context = event.getServletContext();
        WebApplicationContext wac = WebApplicationContextUtils.getRequiredWebApplicationContext(context);
        SystemParamService paramService = wac.getBean(SystemParamService.class);
        String sourcePath = paramService.finaParamValueSystem(SystemUtils.STATIC_SOURCE);
        String mainImg = paramService.finaParamValueSystem(SystemUtils.MAIN_IMG);
        String mainLogo = paramService.finaParamValueSystem(SystemUtils.MAIN_LOGO);
        String smallLogo = paramService.finaParamValueSystem(SystemUtils.SMALL_LOGO);
        //前端接口获取到值
        context.setAttribute("static_source",sourcePath);
        context.setAttribute("main_img",mainImg);
        context.setAttribute("main_logo",mainLogo);
        context.setAttribute("small_logo",smallLogo);
        System.out.println("初始化完成。。。。。");
    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
