package com.qfedu.aihuigou.controller;

import com.qfedu.aihuigou.commons.SystemUtils;
import com.qfedu.aihuigou.pojo.*;
import com.qfedu.aihuigou.service.BrandService;
import com.qfedu.aihuigou.service.CategoryService;
import com.qfedu.aihuigou.service.GoodService;
import com.qfedu.aihuigou.service.ProperService;
import com.qfedu.aihuigou.service.impl.CategoryServiceImpl;
import com.qfedu.aihuigou.utils.ParseUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/good")
public class GoodController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private BrandService brandService;
    @Autowired
    private GoodService goodService;

    @Autowired
    private ProperService properService;
    @RequestMapping(value = {"/home","/query","/querybrand"})
    public String home(@RequestParam(defaultValue = "1") int categoryId,@RequestParam(defaultValue = "1")int brandId,Model model){
        List<Category> categoryAll = categoryService.findCategoryAll();
        List<Brand> brandList = brandService.findBrandToCategoryId(categoryId);
        List<Good> goodList = null;
        if (brandId==-1){
        //默认打开页面查找所有categoryId等于 1 的数据
            goodList = goodService.findGoodByCategoryOrBrandId(categoryId, 1);
        }else {
            //二级分类查找
            goodList = goodService.findGoodByCategoryOrBrandId(-1, brandId);
        }
        model.addAttribute("goodList",goodList);
        model.addAttribute("categoryList",categoryAll);
        model.addAttribute("brandList",brandList);
        return "home";
    }
    @RequestMapping("/info")
    public String info(int goodId,Model model){
       Good good =  goodService.getGoodToId(goodId);
        List<Map<ParProperty, List<SubProperty>>> mapList = properService.getMapListToGoodId(goodId);;
        model.addAttribute("mapList",mapList);
       model.addAttribute("good",good);
       return "info";
    }
    @RequestMapping("/calc")
    public String calcInfo(int goodId,int[] subTypeIds, Model model,HttpSession session){
        //需要加载购物车中的信息·
        List<Cart> cartList=null;
        Object user = session.getAttribute("USER");
        if (user!=null){
            //购物车信息从数据库中读取
        }else {
            //读取当前项目缓存集合中的
            cartList=SystemUtils.cartList;
        }
        model.addAttribute("cartList",cartList);
        Good good =  goodService.getGoodToId(goodId);
        int goodPrice = properService.getPriceToGood(goodId, subTypeIds);
       //取消转化直接再model调用ParseUtils方法进行集合转换
        model.addAttribute("integers", ParseUtils.parseIntToList(goodPrice));
        model.addAttribute("good",good);
        model.addAttribute("goodPrice",goodPrice);
        model.addAttribute("subTypeIds",subTypeIds);
        return "show_price";
    }
    @RequestMapping("addcart")
    @ResponseBody
    public Map<String,String> addCart(int goodId, int goodPrice, HttpSession session,Model model){
        Map<String,String> map = new HashMap<>();

        Cart cart = new Cart();
        cart.setCartPrice(goodPrice);
        cart.setGood(goodService.getGoodToId(goodId));
        boolean addOk= false;
        //查看当前有没有用户登录
        Object user = session.getAttribute("USER");
        if (user!=null){//由用户登录，查询数据库
            //还需要添加一个用户信息
            addOk=goodService.addToCar(cart);

            map.put("msg","success");
        }else {//没有用户登录，临时存储购物车数据
            //cart需要自己设计一个id
            cart.setCartId(++SystemUtils.cartId);
            SystemUtils.cartList.add(cart);

            map.put("msg","success");
        }

        return map;
    }
}
