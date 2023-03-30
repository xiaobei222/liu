<%--
  Created by IntelliJ IDEA.
  User: SAMSUNG
  Date: 2018/3/14
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <base href="<%=request.getContextPath()%>/"/>
    <title>${good.goodName}-回收网 - 手机回收网 | 二手手机交易 | 笔记本回收 | 平板回收</title>
    <meta name="keywords" content="iphone 7 iphone7 7 苹果7 苹果 7">
    <meta name="description" content="iphone 7 iphone7 7 苹果7 苹果 7">
    <meta name="baidu-site-verification" content="IpuQLFxZiC">
    <meta name="chinaz-site-verification" content="081e7651-48c6-4c2f-a569-99321685eab1">
    <meta name="mobile-agent"
          content="format=html5;url=http://m.ihuigo.com/goods/show_price/98db3a1bfac2bda3700435c50fb6e985.html">
    <meta name="applicable-device" content="pc">
    <link rel="alternate" media="only screen and(max-width: 640px)"
          href="http://m.ihuigo.com/goods/show_price/98db3a1bfac2bda3700435c50fb6e985.html">
    <link rel="icon" href="${static_source}${small_logo}"/>
    <link href="css/new_css/global.css" rel="stylesheet" type="text/css">
    <script charset="utf-8" src="http://lxbjs.baidu.com/lxb.js?sid=5220682"></script>
    <script charset="utf-8"
            src="https://tag.baidu.com/vcard/v.js?siteid=5220682&amp;url=http%3A%2F%2Fwww.ihuigo.com%2Fgoods%2Fshow_price%2F98db3a1bfac2bda3700435c50fb6e985.html&amp;source=&amp;rnd=810607852&amp;hm=1"></script>
    <script src="//hm.baidu.com/hm.js?fdfce54119cee7245b0d2a4c78d69456"></script>
    <script src="js/new_js/jquery-1.4.2.js" type="text/javascript"></script>
    <script src="js/new_js/new_public.js" type="text/javascript"></script>
    <script type="text/javascript">
        function selectcity(url) {
            open_div_extends('切换地区', url, 'Loading_child');
        }
    </script>
    <!--<script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-78139156-1', 'auto');
      ga('send', 'pageview');

    </script>-->
    <link href="css/new_css/sub.css" rel="stylesheet" type="text/css">

    <script src="js/public.js" type="text/javascript"></script>

    <script src="js/new_js/menu.js" type="text/javascript"></script>

    <script src="js/new_js/new_goods.js" type="text/javascript"></script>

</head>
<body>
<link rel="stylesheet" type="text/css" href="css/alert_zhe.css">
<script type="text/javascript" src="js/alert_zhe.js"></script>
<div id="Loading_child" class="Loading" style="display:none; height:480px;" ondblclick="ttt('Loading_child');">
    <div class="tyd_box">
        <div class="tyd_box_c">
            <div class="tyd_box_title">
                <span id="Loading_child_title"></span><a href="javascript:ttt('Loading_child')"><img
                    src="images/close1.gif" border="0"></a>
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
                        <div><a href="" rel="nofollow" target="_blank"><img src="images/new_images/shortcut_wx.gif"
                                                                            width="145" height="145"></a></div>
                        <div>扫描进入手机站</div>
                    </div>
                </li>
                <li class="city"><span>当前：
        <span id="selectcity_new">
          <script rel="nofollow" src="/ajax/show_city.html" type="text/javascript" language="javascript"></script>深圳
        </span>
        <a rel="nofollow" href="javascript:void(0);"
           onclick="selectcity('index/selectcity_new.html');">[切换城市]</a></span></li>
            </ul>
        </div>
        <div class="shortcut-right">
            <ul id="login_show">
                <c:choose>
                    <c:when test="${userName == null}">
                        <li><a href="login.jsp" rel="nofollow">登录</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="user/exit" rel="nofollow">退出登录</a></li>
                    </c:otherwise>
                </c:choose>
                <li><a href="user/token" rel="nofollow">注册</a></li>
                <li class="item-daohang"><a class="item-daohang-nav" href="" rel="nofollow"
                                            title="回购网手机回收网站导航">网站导航</a>
                    <div class="sub-nav2">
                        <ul>
                            <li>
                                <dl>
                                    <dt>主要频道</dt>
                                    <dd><a target="_blank" href="good/home"
                                           title="闲置二手手机回收价格评估">旧机回收</a></dd>
                                    <dd><a target="_blank" href="" title="靓机优选手机抢购">靓机优选</a></dd>
                                    <dd><a target="_blank" href="" title="二手手机以旧换新活动">旧机换新</a></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>企业服务</dt>
                                    <dd><a href="" rel="nofollow" target="_blank"
                                           title="手机回收企业代理合作">企业代理</a></dd>
                                    <dd><a href="" rel="nofollow" target="_blank"
                                           title="手机回收市场校园代理合作">校园代理</a></dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt>客户服务</dt>
                                    <dd><a href="" rel="nofollow" target="_blank"
                                           title="回购网手机回收服务条款">服务条款</a></dd>
                                    <dd><a href="" rel="nofollow" target="_blank"
                                           title="手机回收问题投诉与建议">投诉建议</a></dd>
                                    <dd><a onclick="zixunserver('index/zixunserver.html');" href="javascript:void(0)"
                                           rel="nofollow" target="_blank">在线客服</a></dd>
                                </dl>
                            </li>
                            <div class="clear"></div>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="header">
    <div class="page">
        <h1 class="logo"><a href="good/home"><img src="${static_source}${main_logo}" width="171" height="43"
                                                  title="二手手机回收交易网"></a></h1>
        <!--    <h1 class="day" style="display:block;"><a href="/vr" rel="nofollow" target="_blank"><img src="-->
        <!--images/new_images/day.gif" alt="" /></a></h1>-->
        <div class="nav">
            <a title="闲置二手手机回收估价" href="good/home" class="on">
                <!--<span id="nav_xz">&nbsp;</span>-->闲置回收</a>
            <a title="二手手机以旧换新活动" href=""><!--<span id="nav_hx">&nbsp;</span>-->旧机换新<img
                    src="images/new_images/new.png"></a>
            <a title="靓机优选手机抢购" href=""><!--<span id="nav_hx">&nbsp;</span>-->靓机优选</a><a target="_blank"
                                                                                                     href=""
                                                                                                     rel="nofollow"
                                                                                                     style="margin-right:0;"><img
                src="images/new_images/kc.gif" style="vertical-align:middle"></a>
        </div>
    </div>
</div>
<!--头部-->

<!--手机回收-->
<input type="hidden" id="sn" value="98db3a1bfac2bda3700435c50fb6e985">
<input type="hidden" id="sign" value="6a02c0a617dc4eb00696f1e67ace74fe">
<div class="recovery">

    <div class="page2">


        <div class="heat_l" style="width:276px;">
            <div class="heat_img"><img src="${static_source}${good.goodImg}" width="264" height="197"></div>
        </div>
        <div class="heat_new">
            <input type="hidden" name="typeid" id="typeid" value="1"/>

            <dl>
                <dt><span>请选择一种回购方式</span><a href="good/info?goodId=${good.goodId}">重新评估</a></dt>
                <dd class="clearfix heat_on" name="1">
                    <div class="heat_yellow"><img src="images/new_jian.png" class="new_jian">
                        <div class="yellow_l"><a href="javascript:;" class="new_gou new_gou2"></a> <span
                                class="new_icon1">现金</span></div>
                        <div class="yellow_r"><span>全网最高</span>
                            <div id="pg_price" class="digits">
                                <c:forEach items="${integers}" var="num">
                                    <i style="top: ${-29 * num}px;">
                                        <c:forEach var="x" begin="0" end="${num}" step="1">
                                            <em>${x}</em>
                                        </c:forEach>
                                    </i>
                                </c:forEach>
                            </div>
                            <%--<div id="pg_price" class="digits">${goodPrice}</div>--%>
                            <span>元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;官方直收</span>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <a class="heat_input"
                       onclick="insertCar('${good.goodId}','${goodPrice}','${subTypeIds}')">立即下单</a>
                    <a href="javascript:;" class="heat_hg" onclick="addCar(${good.goodId},${goodPrice})">加入购物车</a>
                </dd>
                <%--<input type="button" value="立即下单" class="heat_input" onclick="new_addcart('/ajax/new_addcart.html','sub','98db3a1bfac2bda3700435c50fb6e985')">--%>
                <%--<a href="javascript:;" class="heat_hg" onclick="new_addcart('/ajax/new_addcart.html','add','98db3a1bfac2bda3700435c50fb6e985')">加入回购车</a> </dd>--%>

            </dl>
            <!--                  <div class="labor_div" style=" font-size:14px; color:#666; padding:8px 0;margin-left: 32px; margin-top: -10px;padding-left: 30px; background: rgba(0, 0, 0, 0) url('/images/new_images/new_hongbao.png') no-repeat scroll left center;">点击立即下单上方红包可领取现金</div>                                    -->
            <!--      <div class="heat_xin" style="margin-top:0">每成交一笔将为贫困地区的孩子捐赠1元 &nbsp;<samp id="jia_tip" style="font-size:16px; padding-left:12px; color:#f60 "></samp></div>-->
            <div class="heat_xin" style="margin-top:0">每成交一笔将为贫困地区的孩子捐赠1元 &nbsp;</div>


        </div>
        <script>
            /*将选中的商品加入购物车*/
            function addCar(phoneId, finalPrice) {
                var dateObject = {
                    goodId: phoneId,
                    goodPrice: finalPrice
                };
                $.ajax({
                    url:"good/addcart",
                    data:dateObject,
                    dataType:"json",
                    type:'post',
                    // goodSubTypes:subTypeIds,
                success : function (data,) {
                    if (data.msg == "success") {
                        alert("购物车加入成功");
                        location.reload();
                    } else {
                        alert("购物车加入失败");
                    }
                }
            }

            )
            }

            load_show_price_extends('ajax/load_show_price.html');
            /*==选择==*/
            $(".heat_new dd").click(function () {
                $("#typeid").val($(this).attr('name'));
                $(this).addClass("heat_on").siblings().removeClass("heat_on");
                $(this).find(".yellow_l a").addClass("new_gou2").siblings().removeClass("new_gou2");
            });

            /*$(".heat_arrow").click(function() {
             $ (this).toggleClass ("arrow3")
             $(".heat_list").slideToggle(100)
             });*/

            $(".heat_arrow").click(function (event) {
                event.stopPropagation();
                $(this).toggleClass("arrow3")
                $(".heat_list").slideToggle(100)

            });

            $(".heat_new dd").bind("click", function () {
                var b = $(".heat_list").is(':hidden')
                if (!b) {
                    $(".heat_list").slideUp();
                    $(".heat_arrow").toggleClass("arrow3")
                }
                ;
            })


            /*==选择==*/
        </script>

        <div class="clear"></div>

    </div>

</div>


<script>

    function _nav(name, id, total, is) {


        for (var i = 1; i <= total; i++) {

            if (!is) {

                document.getElementById(name + i).className = '';

            }

            document.getElementById(name + "_list" + i).style.display = 'none';

        }

        if (!is) {

            document.getElementById(name + id).className = 'on';

        }

        document.getElementById(name + "_list" + id).style.display = 'block';

    }

</script>

<!--手机回收-->

<div class="content page2">

    <div class="side">

        <div class="bar1">
            <a class="" id="nav_s1"
               onclick="_nav('nav_s',1,3);show_goods_chengnuo('goods/new_chengnuo.html');">回购承诺</a>
            <a id="nav_s2" onclick="_nav('nav_s',2,3)" class="on">交易评价(999+)</a><a id="nav_s3"
                                                                                       onclick="_nav('nav_s',3,3);"
                                                                                       class="">了解我们如何质检</a>
        </div>

        <div class="list" id="nav_s_list1" style="display: none;">

            <div class="qiehuan">

                <a class="on" id="nav_p1" onclick="_nav('nav_p',1,6)"><span class="itme1"><!--精准选项--></span></a>

                <a id="nav_p2" onclick="_nav('nav_p',2,6)"><span class="itme2"><!--全程透明检测--></span></a>

                <a id="nav_p3" onclick="_nav('nav_p',3,6)"><span class="itme3"><!--全国包邮--></span></a>

                <a id="nav_p4" onclick="_nav('nav_p',4,6)"><span class="itme4"><!--超时理赔--></span></a>

                <a id="nav_p5" onclick="_nav('nav_p',5,6)"><span class="itme5"><!--专业数据删除--></span></a>

                <a id="nav_p6" onclick="_nav('nav_p',6,6)"><span class="itme6"><!-- 72小时价格保护--></span></a>

            </div>

            <div id="nav_p_list1" class="nav_p_list"><img src="images/new_images/zb3.png"></div>

            <div id="nav_p_list2" class="nav_p_list" style="display:none"><img src="images/new_images/zb4.png"></div>

            <div id="nav_p_list3" class="nav_p_list" style="display:none"><img src="images/new_images/zb5.png"></div>

            <div id="nav_p_list4" class="nav_p_list" style="display:none"><img src="images/new_images/zb6.png"></div>

            <div id="nav_p_list5" class="nav_p_list" style="display:none"><img src="images/new_images/zb7.png"></div>

            <div id="nav_p_list6" class="nav_p_list" style="display:none"><img src="images/new_images/zb8.png"></div>

        </div>

        <div class="list" id="nav_s_list2" style="display: block;">

            <iframe id="goods_review" name="goods_review" src="" width="724" border="0" frameborder="0"
                    height="1288"></iframe>

        </div>

        <div class="list" id="nav_s_list3" style="display:none">

            <iframe id="goods_zhijian" name="goods_zhijian" src="" width="724" border="0" frameborder="0"></iframe>

        </div>

    </div>

    <!--回购须知-->

    <div class="notes">

        <div class="notes_title"><span>回购须知</span></div>

        <dl>

            <dd>

                <div class="img"><img src="images/new_images/icon12.gif"></div>

                <div class="txt">

                    <h2>取消密码</h2>

                    <p>请将所设置的密码取消，以便我们检测人员及时进行功能检测。</p>

                </div>

                <div class="clear"></div>

            </dd>

            <dd>

                <div class="img"><img src="images/new_images/icon13.gif"></div>

                <div class="txt">

                    <h2>退出账户</h2>

                    <p>苹果手机IOS7以上请退出icloud帐户魅族请退出flyme帐户</p>

                </div>

                <div class="clear"></div>

            </dd>

            <dd>

                <div class="img"><img src="images/new_images/icon14.gif"></div>

                <div class="txt">

                    <h2>回收过程安全吗？</h2>

                    <p>
                        回购网是正规工商注册的环保企业，成立3年多，是中国标准化回收的领航者。支持多种方式交易：支付宝担保、货到付款和当面交易,并承诺到货后24小时之内确认汇款</p>

                </div>

                <div class="clear"></div>

            </dd>

            <dd class="no">

                <div class="img"><img src="images/new_images/icon15.gif"></div>

                <div class="txt">

                    <h2>价格会不会有变动？</h2>

                    <p>
                        只要您所描叙的使用情况和实际相符合，这个就是最终的回购价格，不会有变动，若和所描叙的有差异，我们将与您说明情况，然后根据网站的评估系统重新评估。若价格不合适，您也可以要求退货。</p>

                </div>

                <div class="clear"></div>

            </dd>

        </dl>

    </div>

    <!--回购须知-->

    <div class="clear"></div>

</div>


<div id="pai_mark" class="pai_mark"></div>
<div class="pai_box pai_give"><img src="images/new_images/pai_close.png" class="pai_close1">
    <p><img src="images/new_images/70.png"></p>

    <div class="pai_bottom">
        <input type="button" value="领取现金" class="pai_btn1">
    </div>
</div>
<div class="pai_cai pai_success">
    <img src="images/new_images/pai_close.png" class="pai_close2">
    <h4><span class="cache_amount"></span>元领取成功!</h4>
    <p>
        1、即领即用，领取后默认使用加价； <br>
        2、加价使用规则 <a href="http://www.ihuigo.com/news/info/37/3909.html">点击查看详情</a><br>
        3、评估一台手机即可领取一次现金，但每个订单限用一 个。<br>
        4、每日限领3次现金，领取的现金仅限当天使用。<br>
        5、活动时间：2016.5.01-2016.5.10，请尽快使用；<br>
        6、回购网保留在法律规定的范围内对上述规则进行解释的权利。 <br>


    </p>
    <div class="pai_bottom2">
        <input type="button" value="领取成功" class="pai_btn1">
    </div>
</div>
<script type="text/javascript">
    function showmark() {
        $("#pai_mark").css("width", $(document).width())
        $("#pai_mark").css("height", $(document).height())
        $(".pai_box").show();
        $("#pai_mark").show();
    }

    function show_box() {
        //onClick="receive_coupon('/ajax/receive_coupon.html');"
        $("#pai_mark").css("width", $(document).width())
        $("#pai_mark").css("height", $(document).height())
        $("#pai_mark").show();
        $(".pai_give").show();
    }

    $(function () {
        $(".pai_close1").bind("click", function () {
            $(".pai_box").hide();
            $("#pai_mark").hide();
            $(".pai_give").hide();
        })
        $(".pai_btn1").click(function () {
//                    receive_coupon('/ajax/receive_coupon.html');
            var url = "/ajax/receive_coupon.html";
            var sn = $("#sn").val();
            var sign = $("#sign").val();
            $.post(url, {'sn': sn, 'sign': sign}, function (data) {
                if (data.status == "true") {
                    $(".cache_amount").text(data.amount);
                    $(".pai_give").hide();
                    $(".pai_success").show();
                    $(".labor_div").text("下单后默认加价" + data.amount + "元");
                } else {
                    alert(data.msg);
                }
            }, "json");

        })

    });
    $(function () {
        $(".pai_close2").bind("click", function () {
            $(".pai_cai").hide();
            $("#pai_mark").hide();

            $(".pai_success").hide();
        })
    });


</script>

<script>
    function goshuangdan(check_url, gourl) {
        $.post(check_url, {}, function (data) {
            var obj = eval(data);
            if (obj[0] == 0) {
                login_pop(gourl);
                return;
            }
            location.reload();
        })
    }
</script>
<script>
    $(function () {
        _nav('nav_s', 2, 3);
        show_goods_review('');
    });
</script>

<div class="footer">
    <div class="page2">
        <dl class="foot_list1">
            <dt>关于我们</dt>
            <dd><a href="" rel="nofollow" target="_blank" title="回购网高价在线手机回收平台">关于回购网</a></dd>
            <dd><a href="" target="_blank" rel="nofollow" title="回购网手机回收联系方式">联系我们</a></dd>
            <dd><a href="" target="_blank" rel="nofollow" title="回购网长期招聘爱好手机回收行业的小伙伴">人才招聘</a>
            </dd>
        </dl>
        <dl class="foot_list2">
            <dt>服务</dt>
            <dd><a href="" target="_blank" rel="nofollow" title="手机回收常见问题与解答">服务条款</a></dd>
            <dd><a href="" target="_blank" rel="nofollow" title="感谢您对手机回收相关问题的投诉与建议">投诉建议</a></dd>
            <dd><a href="" target="_blank" title="回购网的网站地图导航">网站地图</a></dd>
        </dl>
        <dl class="foot_list3">
            <dt>客服热线</dt>
            <dd>
                <p><img src="images/new_images/tel.png"></p>
                <div><a href="" rel="nofollow" target="_blank" class="rk1"
                        title="手机回收业务大客户登录入口">大客户入口</a><a href="" rel="nofollow" target="_blank"
                                                                            class="rk2" title="手机回收合作商登录入口">合作商入口</a>
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
            <p><em>Copyright Reserved 2009-2016 @</em> 回购网ihuigo.com版权所有 <span><a
                    href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">粤ICP备10071783号</a> <script
                    rel="nofollow" src="http://s23.cnzz.com/stat.php?id=4678782&amp;web_id=4678782"
                    language="JavaScript"></script><script src="http://c.cnzz.com/core.php?web_id=4678782&amp;t=z"
                                                           charset="utf-8" type="text/javascript"></script><a
                    href="http://www.cnzz.com/stat/website.php?web_id=4678782" target="_blank"
                    title="站长统计">站长统计</a> <script>
                var _hmt = _hmt || [];
                (function () {
                    var hm = document.createElement("script");
                    hm.src = "//hm.baidu.com/hm.js?fdfce54119cee7245b0d2a4c78d69456";
                    var s = document.getElementsByTagName("script")[0];
                    s.parentNode.insertBefore(hm, s);
                })();
            </script><span></span></span></p>
        </div>
        <!--购物车-->
        <div class="mui-mbar">
            <!--黑色栏-->
            <div class="mui-mbar-mask">
                <div class="mui-mbar-gwc">
                    <div class="mui-mbar-wz"><em class="cart_total_items">${cartList.size()}</em>
                        <p><img src="images/new_images/cart.png"></p>
                        <span>回购车</span>
                    </div>
                </div>
                <!--在线客服-->
                <div class="mui-mbar-kefu mui-mbar-all">
                    <div class="mui-mbar-go"><a rel="nofollow" href="javascript:void(0)"
                                                onclick="zixunserver('index/zixunserver.html')"><img
                            src="/images/new_images/cart_icon1.png"></a></div>
                    <div class="mui-zaixian mui-mbar-last"><a href="javascript:void(0)"
                                                              onclick="zixunserver('index/zixunserver.html')">在线客服</a>
                    </div>
                </div>
                <!--在线客服-->
                <!--微信二维码-->
                <div class="mui-mbar-weixin">
                    <div class="mui-mbar-go"><a href="" rel="nofollow" target="_blank"><img
                            src="images/new_images/cart_icon2.png"></a></div>
                    <div class="mui-weima"><a href="" rel="nofollow" target="_blank"><img
                            src="images/new_images/weixin.png" width="192" height="192"></a></div>
                </div>
                <!--微信二维码-->
                <!--投诉建议-->
                <div class="mui-mbar-tousu mui-mbar-all">
                    <div class="mui-mbar-go"><a href="" rel="nofollow" target="_blank"><img
                            src="images/new_images/cart_icon3.png"></a></div>
                    <div class="mui-jianyi mui-mbar-last"><a href="" rel="nofollow" target="_blank">投诉建议</a></div>
                </div>
                <!--投诉建议-->
                <!--返回顶部-->
                <div class="mui-mbar-top mui-mbar-all">
                    <div class="mui-mbar-go"><a rel="nofollow" href="javascript:goTop();" class="sidetop"><img
                            src="images/new_images/go_top.png"></a></div>
                    <div class="mui-fanhui mui-mbar-last">返回顶部</div>
                </div>
                <!--返回顶部-->
            </div>
            <!--黑色栏-->
            <!--购物车-->
            <div class="mui-mbar-cart">
                <div class="mui-list">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table-list">
                        <tbody>
                        <tr id="cart_tr_title">
                            <th class="table-padding">机型</th>
                            <th width="100">&nbsp;</th>
                            <th width="68">评估价</th>
                        </tr>
                        <c:forEach items="${cartList}" var="cart">
                            <tr id="'+item_id+'">
                                <td class="table-padding">
                                    <div class="mui-pic">
                                        <a href="javascript:" class="close_btn"><img src="images/close.png"
                                                                                     onclick="deleteGood(${cart.cartId})"/></a>
                                        <a href="javascript:void(0)"><img src="${static_source}${cart.good.goodImg}"
                                                                          width="74" height="56"/></a></div>
                                </td>
                                <td>
                                    <p><a href="javascript:void(0)">${cart.good.goodName}</a></p>
                                </td>
                                <td>
                                    <em>￥${cart.cartPrice}</em>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!--结算-->
                <div class="mui-jiesuan">
                    <p>已选<em class="cart_total_items">${cartList.size()}</em>台共计<em
                            id="cart_total">￥${totalPrice}</em></p>
                    <input type="button" value="去结算" class="mui-button" onclick="gosettle()">
                </div>
                <!--结算-->
            </div>
            <!--购物车-->
        </div>
        <!--购物车-->
    </div>

    <script type="text/javascript">
        function deleteGood(cartId) {
//            alert(cartId);
            $.post("/good/deletecart",
                {
                    cartId: cartId,
                }, function (data) {
                    if (data == "success") {
                        alert("商品删除成功");
                        location.reload();
                    } else {
                        alert("商品删除失败")
                    }
                }
            );
        }

        function gosettle() {
            if (${userName == null}) {
                alert("您还没有登录，请登录");
                window.location.href = "login.jsp?settle=settle";
            } else {
                window.location.href = "good/order";
            }
        }
    </script>
    <link rel="stylesheet" type="text/css" href="css/new_css/alert_zhe.css">
    <script type="text/javascript" src="js/new_js/alert_zhe.js"></script>
    <div id="Loading_server" class="Loading_server" style="display:none; height:580px;"
         ondblclick="ttt('Loading_server');">
        <div class="tyd_box">
            <div class="tyd_box_c">
                <div class="tyd_box_title">
                    <span id="Loading_server_title"></span><a href="javascript:ttt('Loading_server')"><img
                        src="images/close1.gif" border="0"></a>
                </div>
                <div class="tyd_box_content" style="width:524px;height:529px; overflow:hidden">
                    <iframe id="Loading_server_iframe_id" name="iframe_id" width="524" height="529" border="0"
                            frameborder="0"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div id="mbDIV" style="display:none;"></div>
    <script type="text/javascript" src="js/new_js/jquery.scrollLoading.js"></script>
    <script>
        $(document).ready(function () {
            $(".scrollLoading").scrollLoading()
        });

        function zixunserver(url) {
            open_div_extends('', url, 'Loading_server', 524, 580);
        }

        function gocart(check_url, gourl) {
            $.post(check_url, {}, function (data) {
                var obj = eval(data);
                if (obj[0] == 0) {
                    login_pop(gourl);
                    return;
                }
                location.href = gourl;
            })
        }
    </script>
    <input type="hidden" id="public_gourl" value="">
    <link rel="stylesheet" type="text/css" href="css/login_popup/alert_zhe.css">
    <script type="text/javascript" src="js/new_js/login_popup/alert_zhe.js"></script>
    <div id="Loading_child_members" class="Loading" style="display:none; height:600px;"
         ondblclick="ttt('Loading_child_members');">
        <div class="tyd_box">
            <div class="tyd_box_c">
                <div class="tyd_box_title">
                    <span id="Loading_child_members_title"></span><a href="javascript:ttt('Loading_child_members')"><img
                        src="images/close1.gif" border="0"></a>
                </div>
                <div class="tyd_box_content" style="width:502px;overflow:auto; height:570px;;">
                    <iframe id="Loading_child_members_iframe_id" name="iframe_id" width="502" height="570px;" border="0"
                            frameborder="0"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div id="mbDIV_members" style="display: none; height: 2074px;"></div>
    <script type="text/javascript">
        function login_pop() {
            var gourl = arguments[0] ? arguments[0] : '';
            if (gourl != '') $("#public_gourl").val(gourl);
            open_div_extends('登录与注册', '/members/login_popup.html', 'Loading_child_members', '502', '600');
        }
    </script>
    <!--[if lte IE 6]>
    <script src="js/new_js/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('img,.banner ul, li, dl, dt, dd, span, em, div, i, samp, a, b, .kuang');
    </script>
    <![endif]-->

</div>
</body>
