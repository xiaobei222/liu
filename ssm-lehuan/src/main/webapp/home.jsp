<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%	String basePath = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>${categoryDTO.categoryName}回收_二手${categoryDTO.categoryName},旧${categoryDTO.categoryName},废旧${categoryDTO.categoryName}回收交易,价格评估_回购网_第1页</title>
    <meta name="keywords" content="${categoryDTO.categoryName}回收,二手${categoryDTO.categoryName}回收,旧${categoryDTO.categoryName}回收,废旧${categoryDTO.categoryName}回收,二手${categoryDTO.categoryName}交易,二手${categoryDTO.categoryName}价格,二手${categoryDTO.categoryName}估价,${categoryDTO.categoryName}回收价格"/>
    <meta name="description" content="回购网二手${categoryDTO.categoryName}回收，为您提供各种品牌的二手${categoryDTO.categoryName}、旧${categoryDTO.categoryName}、废旧${categoryDTO.categoryName}的回收交易、专业检测、价格评估服务，给您一个满意的二手${categoryDTO.categoryName}回收价格。"/>
    <meta name="baidu-site-verification" content="IpuQLFxZiC"/>
    <base href="<%=request.getContextPath()%>/"/>
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1"/>
    <meta name="mobile-agent" content="format=html5;url=http://m.ihuigo.com/ershoushouji.html">
    <meta name="applicable-device" content="pc">
    <link rel="alternate" media="only screen and(max-width: 640px)" href="http://m.ihuigo.com/ershoushouji.html">
    <link rel="icon" href="${static_source}${small_logo}"/>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/new_css/global.css" rel="stylesheet" type="text/css">
    <script src="js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
    <script src="js/new_js/new_public.js" type="text/javascript"></script>
    <script type="text/javascript">
        function selectcity(url) {
            open_div_extends('切换地区', url, 'Loading_child');
        }
    </script>
    <link href="css/new_global.css" rel="stylesheet" type="text/css">
    <script src="js/new_js/jquery.kinMaxShow-1.1.min.js" type="text/javascript"></script>
    <script src="js/new_js/lrtk.js" type="text/javascript"></script>
    <script src="js/new_js/menu.js" type="text/javascript"></script>
    <script src="js/new_js/index.js" type="text/javascript"></script>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<link rel="stylesheet" type="text/css" href="/css/alert_zhe.css"/>
<script type="text/javascript" src="js/alert_zhe.js"></script>
<div id="Loading_child" class="Loading" style="display:none; height:480px;" onDblClick="ttt('Loading_child');">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_child_title"></span><a href="javascript:ttt('Loading_child')"><img
                    src="images/close1.gif" border="0"/></a>
            </div>
            <div class="tyd_box_content" style="width:612px;overflow:auto; height:450px;">
                <iframe id="Loading_child_iframe_id" name="iframe_id" width="612" height="450" border="0"
                        frameborder="0"></iframe>
            </div>
        </div>
    </div>
</div>
<div id="mbDIV" style="display:none;"></div><!--头部-->
<div class="shortcut">
    <div class="page">
        <div class="shortcut-left">
            <ul>
                <li class="item-more"><a rel="nofollow" href="javascript:void(0)"><span>&nbsp;</span><em>手机逛回购</em></a>
                    <div class="sub-nav">
                        <div><a href="http://m.ihuigo.com" rel="nofollow" target="_blank"><img
                                src="images/new_images/shortcut_wx.gif" width="145" height="145"/></a></div>
                        <div>扫描进入手机站</div>
                    </div>
                </li>
                <li class="city"><span>当前：
        <span id="selectcity_new">
          <!--<script rel="nofollow" src="ajax/show_city.html" type="text/javascript" language="javascript"></script>-->
        </span>
        <a rel="nofollow" href="javascript:void(0);">[切换城市]</a></span></li>
            </ul>
        </div>
        <div class="shortcut-right">
            <div class="dropdown">
                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    个人中心
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <ul id='login_show'>
                        <c:choose>
                            <c:when test="${userName == null}">
                                <li><a href="login.jsp" rel="nofollow">登录</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="user/exit" rel="nofollow">退出登录</a></li>
                            </c:otherwise>
                        </c:choose>
                        <li><a href="user/token" rel="nofollow">注册</a></li>
                    </ul>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="header">
    <div class="page">
        <h1 class="logo"><a href=""><img src="${static_source}${main_logo}" width="171" height="43"
                                         title="二手${categoryDTO.categoryName}回收交易网"/></a></h1>
        <div class="nav">
            <a title="闲置二手${categoryDTO.categoryName}回收估价" href="" class="on">
                <!--<span id="nav_xz">&nbsp;</span>-->闲置回收</a>
            <a title="二手${categoryDTO.categoryName}以旧换新活动" href=""><!--<span id="nav_hx">&nbsp;</span>-->旧机换新<img
                    src="images/new_images/new.png"/></a>
            <a title="二手优品${categoryDTO.categoryName}抢购" href=""><!--<span id="nav_hx">&nbsp;</span>-->二手优品</a><a target="_blank"
                                                                                                    href=""
                                                                                                    rel="nofollow"
                                                                                                    style="margin-right:0;"><img
                src="/images/new_images/kc.gif" style="vertical-align:middle"></a>
        </div>
    </div>
</div>
<!--头部-->
<script type="text/javascript" src="/js/goods.js"></script>
<div class="new_search" style="padding-bottom:20px">
    <div class="search-box">
        <div class="search-title">搜一下，看看你的二手闲置还值多少钱</div>
        <div class="search">
            <div class="search-fenlei" id="search-fenlei">
                <div class="set" id="all_type" style="font-size: 10px">${categoryDTO.categoryName}</div>
                <div class="search-list">
                    <ul>
                        <li class="search-list-iconall"><a href="javascript:void(0)" rel="nofollow"><span
                                onClick="t_click(this,'goods.html')">全部分类</span></a></li>
                        <li class="search-list-icon1"><a href="javascript:void(0)" rel="nofollow"><span
                                onClick="t_click(this,'ershoushouji.html')">${categoryDTO.categoryName}</span></a></li>
                    </ul>
                </div>
            </div>
            <form name="top_goods_search" id="top_goods_search" action="ershoushouji.html" method="get">
                <input type="text" name="gname" id="top_name" value="请输入品牌型号搜索" class="input-txt"
                       onkeydown="if(event.keyCode==13) return top_search_goods();"
                       onFocus="if(this.value=='请输入品牌型号搜索'){this.value='';}"
                       onblur="if(this.value==''){this.value='请输入品牌型号搜索';}"/>
                <input type="button" value="" class="input-btn" />
            </form>
        </div>
    </div>
</div>
<div class="search_list">
    <div class="page">
        <div class="current"><a href="">首页</a><span>></span><a href="good/home">闲置回收</a>
            <span>></span><a href="good/query?categoryId=${categoryDTO.categoryId}">${categoryDTO.categoryName}</a>
            <em></em>
        </div>
        <div class="side_left">
            <dl class="side_list">
                <dt>搜索结果分类</dt>
                <c:forEach items="${categoryList}" var="category">
                <dd class="item_on"><a href="good/query?categoryId=${category.categoryId}" title="${category.categoryName}回收价格评估">
                    <b class="item${category.categoryId}">&nbsp;</b><em>${category.categoryName}</em><span>&nbsp;</span></a></dd>
                </c:forEach>
            </dl>
            <dl class="side_hot">
                <dt>最近热门回收</dt>
                <dd>
                    <div class="img2">
                        <img src="${static_source}iphone6.jpg" width="42"
                             height="31" title="iphone 6回收价格评估"/>
                    </div>
                    <div class="txt2">
                        <p style="width:120px;">
                            <a href="" title="iphone 6回收价格评估">iphone 6</a></p>1000
                    </div>
                    <div class="clear"></div>
                </dd>
            </dl>
            <ul class="hotline">
                <li><img src="images/icon30.png" alt="回购网${category.categoryName}回收400电话咨询"
                         style="vertical-align:middle"><span>12345678</span></li>
            </ul>
        </div>
        <div class="side_right">
            <div class="brand">
                <div class="title2"><span><a href="good/query?categoryId=${category.categoryId}"><strong>${categoryDTO.categoryName}</strong> 品牌</a></span></div>
                <div class="brand_main">
                    <div class="brand_hot">
                        <c:forEach items="${brandList}" var="brand">
                            <a href="good/querybrand?brandId=${brand.brandId}">${brand.brandName}</a>
                            <em>|</em>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="search_main">
                <div class="search_title"><h2 class="list-item">${brand.brandName}${category.categoryName}回收</h2>&nbsp;&nbsp;&nbsp;&nbsp;<em></em>搜索到<em>
                    ${count} </em>个结果
                </div>
                <dl class="pic_list">
                    <c:forEach items="${goodList}" var="goodDTO">
                    <dd>
                        <div class="pic_list_box">
                            <div class="pic_list_img"><a href="good/info?goodId=${goodDTO.goodId}" title="${goodDTO.goodName}回收价格评估">
                                <img src="${static_source}${goodDTO.goodImg}" width="180"
                                    height="135" alt="${goodDTO.goodName}闲置回收价格评估"/></a></div>
                             
                            <p class="name">${goodDTO.goodName}</p>
                            <p class="pinggu"><a href="good/info?goodId=${goodDTO.goodId}" title="在线评估${goodDTO.goodName}回收价格"><!--去评估--></a>
                            </p>
                            <div class="hot"><img src="images/hot.png"/></div>
                        </div>
                    </dd>
                     </c:forEach>
                    <div class="clear"></div>
                </dl>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!--查询结果-->
<script type="text/javascript">
    $(document).ready(function () {
        $('.pic_list dd').mousemove(function () {
            $(this).find('.pic_list_box').addClass('kuang');
        });
        $('.pic_list dd').mouseleave(function () {
            $(this).find('.pic_list_box').removeClass('kuang');
        });
    });
</script>
<div class="footer">
    <div class="page2">
        <dl class="foot_list1">
            <dt>关于我们</dt>
            <dd><a href="" rel="nofollow" target="_blank" title="回购网高价在线${categoryDTO.categoryName}回收平台">关于千锋</a></dd>
            <dd><a href="" target="_blank" rel="nofollow" title="回购网${categoryDTO.categoryName}回收联系方式">联系我们</a></dd>
            <dd><a href="" target="_blank" rel="nofollow" title="回购网长期招聘爱好${categoryDTO.categoryName}回收行业的小伙伴">人才招聘</a></dd>
        </dl>
        <dl class="foot_list2">
            <dt>服务</dt>
            <dd><a href="" target="_blank" rel="nofollow" title="${categoryDTO.categoryName}回收常见问题与解答">服务条款</a></dd>
            <dd><a href="" target="_blank" rel="nofollow" title="感谢您对${categoryDTO.categoryName}回收相关问题的投诉与建议">投诉建议</a>
            </dd>
            <dd><a href="" target="_blank" title="回购网的网站地图导航">网站地图</a></dd>
        </dl>
        <dl class="foot_list3">
            <dt>客服热线</dt>
            <dd>
                <p><img src="images/new_images/tel.png"/></p>
                <div><a href="" rel="nofollow" target="_blank" class="rk1" title="${categoryDTO.categoryName}回收业务大客户登录入口">大客户入口</a><a
                        href="" rel="nofollow" target="_blank" class="rk2" title="${categoryDTO.categoryName}回收合作商登录入口">合作商入口</a>
                </div>
            </dd>
        </dl>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".weixin2").hover(function () {
                    $(this).find(".weixin-qrcode2").show();
                }, function () {
                    $(this).find(".weixin-qrcode2").hide();
                });
            });
        </script>
        <dl class="foot_list4">
            <dt>关注我们</dt>
            <dd class="sina"><a href="http://e.weibo.com/ihuigo?topnav=11" rel="nofollow" target="_blank">&nbsp;</a>
            </dd>
            <dd class="weixin"><a rel="nofollow" class="weixin2" target="_blank">
                <div class="weixin-qrcode2"></div>
            </a></dd>
        </dl>
        <div class="clear"></div>
        <div class="statist">
            <p><em>Copyright Reserved 2009-2016 @</em>
                回购网ihuigo.com版权所有
                <span>
                    <a href="#" target="_blank" rel="nofollow">粤ICP备10071783号</a>
                </span>
            </p>
        </div>
        <!--购物车-->
        <div class="mui-mbar">
            <!--黑色栏-->
            <div class="mui-mbar-mask">
                <!-- <div class="mui-mbar-gwc">
                    <div class="mui-mbar-wz"><em class="cart_total_items">0</em>
                        <p><img src="../images/new_images/cart.png"/></p>
                        <span>回购车</span>
                    </div>
                </div> -->
                <!--在线客服-->
                <div class="mui-mbar-kefu mui-mbar-all">
                    <div class="mui-mbar-go"><a rel="nofollow" href="javascript:void(0)"
                                                onclick="zixunserver('index/zixunserver.html')"><img
                            src="images/new_images/cart_icon1.png"/></a></div>
                    <div class="mui-zaixian mui-mbar-last"><a href="javascript:void(0)"
                                                              onclick="zixunserver('index/zixunserver.html')">在线客服</a>
                    </div>
                </div>
                <!--在线客服-->
                <!--微信二维码-->
                <div class="mui-mbar-weixin">
                    <div class="mui-mbar-go"><a href="" rel="nofollow" target="_blank"><img
                            src="images/new_images/cart_icon2.png"/></a></div>
                    <div class="mui-weima"><a href="" rel="nofollow" target="_blank"><img
                            src="images/new_images/weixin.png" width="192" height="192"/></a></div>
                </div>
                <!--微信二维码-->
                <!--投诉建议-->
                <div class="mui-mbar-tousu mui-mbar-all">
                    <div class="mui-mbar-go"><a href="" rel="nofollow" target="_blank"><img
                            src="images/new_images/cart_icon3.png"/></a></div>
                    <div class="mui-jianyi mui-mbar-last"><a href="" rel="nofollow"
                                                             target="_blank">投诉建议</a></div>
                </div>
                <!--投诉建议-->
                <!--返回顶部-->
                <div class="mui-mbar-top mui-mbar-all">
                    <div class="mui-mbar-go"><a rel="nofollow" href="javascript:goTop();" class="sidetop"><img
                            src="images/new_images/go_top.png"/></a></div>
                    <div class="mui-fanhui mui-mbar-last">返回顶部</div>
                </div>
                <!--返回顶部-->
            </div>
            <!--黑色栏-->
            <!--购物车-->
            <div class="mui-mbar-cart">
                <div class="mui-list">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table-list">
                        <tr id="cart_tr_title">
                            <th class="table-padding">机型</th>
                            <th width="100">&nbsp;</th>
                            <th width="68">评估价</th>
                        </tr>
                    </table>
                </div>
                <!--结算-->
                <div class="mui-jiesuan">
                    <p>已选<em class="cart_total_items">0</em>台共计<em id="cart_total">￥0</em></p>
                    <input type="button" value="去结算" class="mui-button"
                           onclick="gocart('ajax/check_iflogin.html','order/cart.html')"/>
                </div>
                <!--结算-->
            </div>
            <!--购物车-->
        </div>
        <!--购物车-->
    </div>
</div>
<!--[if lte IE 6]>
<script src="js/new_js/png.js" type="text/javascript"></script>
<script type="text/javascript">
    DD_belatedPNG.fix('img,.banner ul, li, dl, dt, dd, span, em, div, i, samp, a, b, .kuang');
</script>
<![endif]-->
</body>
</html>
