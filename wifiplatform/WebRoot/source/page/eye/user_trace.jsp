<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0046)http://www.nuomi.com/uc/order/order?status=all -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script charset="utf-8" src="${ctx}/source/js/nuomi/v.js"></script>
<script async="" src="${ctx}/source/js/nuomi/element.min.js"></script>
<script async="" src="${ctx}/source/js/nuomi/monkey.min.js"></script>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<script type="text/javascript" async=""
	src="${ctx}/source/js/nuomi/rt.js"></script>
<script src="${ctx}/source/js/nuomi/alog.min.js"></script>
<script src="${ctx}/source/js/nuomi/hm.js"></script>

<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/common.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/eye/home.css">
<link rel="stylesheet" type="text/css"
	href="http://api.map.baidu.com/res/12/bmap.css">

<script type="text/javascript" src="${ctx}/source/js/eye/api。js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/getscript.js"></script>

<script type="text/javascript" src="${ctx}/source/js/eye/mod.js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/jquery.js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/common.js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/metronic.js"></script>
<script type="text/javascript"
	src="${ctx}/source/js/eye/echarts-plain-map.js"></script>
<script type="text/javascript" src="${ctx}/source/js/eye/home.js"></script>

<script>
	var F = {};
	(function() {
		var b = {};
		F.context = function(p, r) {
			var q = arguments.length;
			if (q > 1) {
				b[p] = r
			} else {
				if (q == 1) {
					if (typeof p == "object") {
						for ( var o in p) {
							if (p.hasOwnProperty(o)) {
								b[o] = p[o]
							}
						}
					} else {
						return b[p];
					}
				}
			}
		};
	})();
</script>
<title>爱WIFI</title>

<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?a028c07bf31ffce4b2d21dd85b0b8907";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>


<script>
	void function(e, t, n, a, o, i, m) {
		e.alogObjectName = o, e[o] = e[o] || function() {
			(e[o].q = e[o].q || []).push(arguments)
		}, e[o].l = e[o].l || +new Date, i = t.createElement(n), i.asyn = 1,
				i.src = a, m = t.getElementsByTagName(n)[0], m.parentNode
						.insertBefore(i, m)
	}(window, document, "script", "http://img.baidu.com/hunter/alog.min.js",
			"alog");
</script>

<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/nuomi/common_4299604.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/source/js/nuomi/user_f1d42b1.css">
<script type="text/javascript"
	src="${ctx}/source/js/nuomi/user_53f8e7a.js"></script>
</head>


<body mon="page=order_list">

	<script type="text/javascript">
		F
				.context({
					"channel" : "zhifang_other||",
					"channel_content" : "",
					"da_page" : "order_list",
					"nuomi_base" : "http://www.nuomi.com",
					"logout_nuomi" : "/pclogin/main/logout",
					"baid_uss_url" : "http://uid.nuomi.baidu.com/getbduss",
					"logout_baidu" : "https://passport.baidu.com/?logout",
					"xll" : "",
					"xll_meishi" : "",
					"loginTest" : "",
					"passport_base" : "http://passport.baidu.com",
					"nuomi_old_base" : "http://login.nuomi.com",
					"passport_reg" : "http://passport.baidu.com/v2/?reg&tpl=nuomi&color=pink"
				});
	</script>

	<!--[if IE 6]>
<![endif]-->


	<div id="j-go-top" alog-alias="bainuo-detail-go-top-and-add-favorite"
		alog-group="bainuo-detail-go-top-and-add-favorite">
		<a class="go-top"
			mon="area=rightFuc&amp;element=toTop&amp;element_type=nav"
			style="display: none;"> </a> <a class="add-favorite"
			mon="area=rightFuc&amp;element=collect&amp;element_type=nav"> </a> <a
			class="questionnaire " target="_blank"
			href="http://uxsurvey.baidu.com/index.php?sid=58946&newtest=Y&lang=zh-Hans">
		</a>
	</div>




	<div class="w-header">
		<script type="text/javascript">
			F.context("nuomi_base", "http://www.nuomi.com");
		</script>

		<script type="text/javascript">
			F.context("page_name", "order_list");
			F.context("coupon_url",
					"http://www.nuomi.com/uc/giftcard/find?status=1");
		</script>
		<div class="nav-area " id="j-nav-area"
			alog-alias="bainuo-user-nav-area" alog-group="bainuo-user-nav-area">

		</div>
	</div>

	<div class="uc p-order-list clearfix">

		<div class="uc-wrap">
			<div class="uc-side fl">
				<ul class="w-nav clearfix" id="j-uc-nav" mon="element_type=nav"
					alog-alias="bainuo-user-pagetab" alog-group="bainuo-user-pagetab">
					<li class="nav-active"><a class="nav-txt j-nav"
						href="javascript:;"> 统计分析 </a>
						<ul class="sub-nav" mon="area=subNav">
							<li><a href="mall!eye.do?uid=${uid}&name=${name}" class="">
									<span class="sub-nav-ico">•</span>全局概览
							</a></li>
							<li><a
								href="mall!customer_portrait.do?uid=${uid}&name=${name}"
								class=""> <span class="sub-nav-ico">•</span>顾客画像
							</a></li>
						</ul></li>
					<li class="nav-active"><a class="nav-txt j-nav"
						href="javascript:;"> AP信息 </a>
						<ul class="sub-nav" mon="area=subNav">
							<li><a href="mall!store_ap.do?uid=${uid}&name=${name}"
								class=""> <span class="sub-nav-ico">•</span>AP信息
							</a></li>
						</ul></li>
					<li class="nav-active nav-current"><a class="nav-txt j-nav"
						href="javascript:;"> 用户 </a>
						<ul class="sub-nav" mon="area=subNav">
							<li><a href="mall!customerinfo.do?uid=${uid}&name=${name}"
								class=""> <span class="sub-nav-ico">•</span>用户信息
							</a></li>
							<li><a href="#" class="sub-nav-active">
									<span class="sub-nav-ico">•</span>用户轨迹
							</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="uc-main fr">

				<div class="layout_rightmain" style="padding-top: 0px;">
					<div class="r-top"
						style="z-index: 10000; position: relative; top: 0px; right: 0px; left: 0px; background: rgb(255, 255, 255);">
						<div class="menu" id="menu">
							<dl>
								<dt>
									<b class="menu-icon-location"></b><span id="currentCooperLoc">${name}</span><b
										class="menu-icon-arrow" style="display: none;"></b>
								</dt>
								<dd>
									<ul id="cooperLocList"></ul>
								</dd>
							</dl>
						</div>
						<div class="tool_date cf" style="display: none;">
							<div class="date" id="div_date">
								<span class="date_title" id="date">2014-08-25 至
									2014-08-31</span> <a class="opt_sel" id="input_trigger"
									href="http://huiyan.baidu.com/malldemo/flow/going#"> <i
									class="i_orderd"></i>
								</a>
							</div>
							<label class="contrast" for="needCompare_1419491852850"
								style="display: none;"><input type="checkbox" class="pc"
								name="needCompare_1419491852850" id="needCompare_1419491852850"
								value="1" disabled="disabled">对比</label>
							<div class="ta_date" id="div_compare_date" style="display: none;">
								<span name="dateCompare" id="dateCompare" class="date_title"
									style="display: none;"></span> <a class="opt_sel"
									id="compare_trigger"
									href="http://huiyan.baidu.com/malldemo/flow/going#"> <i
									class="i_orderd"></i>
								</a>
							</div>
							<div class="date-section cf" id="short_opt">
								<ul id="toolbar" class="select cf">
									<li><a id="aRecent3Days" href="javascript:void(0);">3天</a></li>
									<li><a id="aRecent7Days" href="javascript:void(0);">7天</a></li>
									<li><a id="aRecent14Days" href="javascript:void(0);">14天</a>
									</li>
									<li><a id="aRecent30Days" href="javascript:void(0);">30天</a>
									</li>
								</ul>
							</div>
							<div id="datePicker">
								<input type="hidden" id="startDate" name="startDate"
									value="2014-08-25"><input type="hidden" id="endDate"
									name="endDate" value="2014-08-31"><input
									type="checkbox" id="needCompare" name="needCompare" value="0"
									style="display: none;">
							</div>
						</div>
					</div>
					<div id="tipBox" style="height: 0px;">
						<span class="title">温馨提示：</span> <span class="message"></span> <span
							class="close_icon"></span>
					</div>
					<div id="map_usertrail" style="width: 100%;height: 500px;"></div>
				</div>

			</div>
		</div>
	</div>
	<div class="w-footer"></div>



	<script type="text/javascript"
		src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
	<script>
		var monkeyPageId = "bainuo-user-page-orderlist";

		var map = new BMap.Map("map_usertrail");
		map.enableScrollWheelZoom();
		var point = new BMap.Point(116.404, 39.915);
		map.centerAndZoom(point, 13);

		var EXAMPLE_URL = 'http://api.map.baidu.com/library/TextIconOverlay/1.2/examples/';
		
		var myStyles = [{
	        url: EXAMPLE_URL + 'images/m3.png',
	        size: new BMap.Size(78, 78),
	      
	        textColor: '#ff00ff',
	        opt_textSize: 10
	    }, {
	        url: EXAMPLE_URL + 'images/m3.png',
	        size: new BMap.Size(78, 78),
	     
	        textColor: '#ff0000',
	        opt_textSize: 12
	    }, {
	        url: EXAMPLE_URL + 'images/m3.png',
	        size: new BMap.Size(78, 78),
	        textColor: 'white',
	        opt_textSize: 14
	    }];

	    BMapLib.TextIconOverlay.prototype.getStyleByText = function (text, styles) {
	        var count = parseInt(text);
	        var index = parseInt(count / 20);
	        index = Math.max(0, index);
	        index = Math.min(index, styles.length - 1);
	        return styles[1];
	    };
	    
		var rm = new BMapLib.TextIconOverlay(point, 7, { styles: myStyles });

		map.addOverlay(rm);
		map.addOverlay(new BMapLib.TextIconOverlay(new BMap.Point(116.404,
				39.885), 12, { styles: myStyles }));
		map.addOverlay(new BMapLib.TextIconOverlay(new BMap.Point(116.354,
				39.915), 24, { styles: myStyles }));
		map.addOverlay(new BMapLib.TextIconOverlay(new BMap.Point(116.454,
				39.915), 48, { styles: myStyles }));
		map.addOverlay(new BMapLib.TextIconOverlay(new BMap.Point(116.404,
				39.945), 99, { styles: myStyles }));

		rm.addEventListener("click", function(e) {
			// console.log(e);
		});
		rm.addEventListener("mouseover", function(e) {
			// console.log(e);
		});
		rm.addEventListener("mouseout", function(e) {
			// console.log(e);
		});
	</script>

	<iframe src="${ctx}/source/js/nuomi/pixel.html"
		style="width: 1px; height: 1px; border: 0; position: absolute; left: -100px; top: -100px;"></iframe>


	<script type="text/javascript">
	<!--
		(function(d) {
			(window.bd_cpro_rtid = window.bd_cpro_rtid || []).push({
				id : "nH0znjDv"
			});
			var s = d.createElement("script");
			s.type = "text/javascript";
			s.async = true;
			s.src = location.protocol + "//cpro.baidu.com/cpro/ui/rt.js";
			var s0 = d.getElementsByTagName("script")[0];
			s0.parentNode.insertBefore(s, s0);
		})(document);
	//-->
	</script>


	<script>
		alog("set", "alias", {
			monkey : "http://img.baidu.com/hunter/alog/monkey.min.js",
			element : "http://img.baidu.com/hunter/alog/element.min.js"
		});

		alog("require", [ "monkey", "element" ], function(monkey, element) {
			monkey.create({
				page : monkeyPageId, //填写页面的Monkey pageId，与创建实验时填写的页面pageId一致
				pid : "241", //固定的不用改，Monkey日志的pid
				p : "241", //log平台为每个产品线分的id，如果没有设为241
				hid : "2189", //Monkey实验的ID，Hunter系统实验管理页列表的第一列
				postUrl : "http://nsclick.baidu.com/u.gif",//固定值，上报统计的请求地址
				reports : {
					refer : 1, //统计页面来源
					staytime : 1
				//统计用户在该页面的停留时间
				}
			});
		});

		//发送PV统计请求
		alog("monkey.send", "pageview", {
			now : +new Date
		});
	</script>

	<script type="text/javascript"
		src="${ctx}/source/js/nuomi/mod_e56bbba.js"></script>
	<script type="text/javascript"
		src="${ctx}/source/js/nuomi/common_aab883c.js"></script>
	<script type="text/javascript">
		!function() {
			function addFavorite() {
				var url = window.location;
				var title = document.title;
				var ua = navigator.userAgent.toLowerCase();
				var alertMessage = '您可以尝试通过快捷键Ctrl/Cmd + D 加入到收藏夹~';
				if (ua.indexOf("360se") > -1) {
					alert(alertMessage);
				} else if (ua.indexOf("msie 8") > -1) {
					window.external.AddToFavoritesBar(url, title); //IE8
				} else if (document.all) {
					try {
						window.external.addFavorite(url, title);
					} catch (e) {
						alert(alertMessage);
					}
				} else if (window.sidebar) {
					window.sidebar.addPanel(title, url, "");
				} else {
					alert(alertMessage);
				}
			}
			;
			$(window).scroll(
					function() {
						var scrollHeight = $(window).scrollTop();
						if (scrollHeight > 10) {
							var isIE6 = !!window.ActiveXObject
									&& !window.XMLHttpRequest;
							if (!isIE6) {
								$(".go-top").css("display", "inline-block");
							}
						} else {
							$(".go-top").css("display", "none");
						}
					});
			/*$(".questionnaire").mouseover(function(){
			    $(this).addClass("questionnaire-hover");
			}).mouseout(function(){
			    $(this).removeClass("questionnaire-hover");
			});*/
			$(".go-top").mouseover(function() {
				$(this).addClass("go-top-hover");
			}).mouseout(function() {
				$(this).removeClass("go-top-hover");
			}).click(function() {
				$('html,body').animate({
					scrollTop : '0px'
				}, 500);
			});
			$(".add-favorite").mouseover(function() {
				$(this).addClass("add-favorite-hover");
			}).mouseout(function() {
				$(this).removeClass("add-favorite-hover");
			}).click(function() {
				addFavorite();
			});

			(function() {
				var ua = navigator.userAgent.toLowerCase();
				var isPad = ua.match(/iPad/i) ? true : false;
				if (isPad) {
					var goTop = $("#j-go-top");
					goTop.remove();
				}
			})();
			//判断日期是否没过 11月20日(20号过后此代码无效，可删！)
			if (new Date().getTime() <= new Date('2014/11/20 00:00:00')
					.getTime()) {
				$(".questionnaire")
						.addClass('questionnaire-dc')
						.attr('href',
								'http://uxsurvey.baidu.com/index.php?sid=69549&lang=zh-Hans');
			}
		}();
		!function() {
			require.async([ 'common:widget/ui/cookie/cookie.js' ], function(
					Cookie) {
				function initErweima() {
					//读取cookie，查看之前用户是否关闭了二维码，如果关闭，一段时间之内不再显示
					var mobileUploadEntry = Cookie.get("mobile_upload_entry");
					if (mobileUploadEntry) {
						$("#mobile-upload-entry").css("display", "none");
					}
					$(window).scroll(
							function() {
								var scrollHeight = $(window).scrollTop();
								if (scrollHeight > 96) {
									$("#mobile-upload-entry").css("position",
											"fixed");
									$("#mobile-upload-entry").css("top",
											"250px");
								} else {
									$("#mobile-upload-entry").css("position",
											"absolute");
									$("#mobile-upload-entry").css("top",
											"346px");
								}
							})
				}
				function closeErweima() {
					$("#mobile-upload-entry").css("display", "none");
					Cookie.set('mobile_upload_entry', '0', 'today');
				}
				$("#mobile-upload-entry .close-btn").click(closeErweima);
				initErweima();
			});
			/* 将ipad上的二维码移除， by chenyao09 */
			(function() {
				var ua = navigator.userAgent.toLowerCase();
				var isPad = ua.match(/iPad/i) ? true : false;
				if (isPad) {
					var erweima = $("#mobile-upload-entry");
					erweima.remove();
				}
			})();
		}();
		!function() {
			require.async([ 'common:widget/header/top-banner/top-banner.js' ]);
		}();
		!function() {

			require.async([ 'common:widget/header/bar/bar.js' ]);

		}();
		!function() {
			F.context({
				isHotCity : "1",
				isIndex : ""
			});
			require.async([ 'common:widget/header/header.js' ]);
		}();
		!function() {
			var passBindPhone = require('common:widget/ui/passport_bind_phone/passport_bind_phone.js');
			//直接调用，自动判断status并弹出绑定
			$("#j-uc-bind-phone").click(function() {
				passBindPhone.bind();
			});
		}();
		!function() { /* require("user:widget/nav/nav.js"); */
			$(function() {

				$("#j-uc-nav .j-nav").on('click', function() {
					$(this).parent("li").toggleClass("nav-active");
				});

			});

		}();
		!function() {
			require.async('user:widget/ui/order_operate/order_operate.js',
					function(order) {
						order.init("#J-orders-wrap");
					});
		}();
		!function() {// 翻页
			require.async('common:widget/ui/pager/pager.js', function(Pager) {
				var p = $("#J-pager").attr("data-p"), pn = $("#J-pager").attr(
						"data-pn"), total = $("#J-pager").attr("data-total"),

				status = $("#J-pager").attr("data-status");

				var urlBase = '/uc/order/order?status=' + status + '&';

				var options = {
					currentPage : p || 1,
					totalPage : Math.ceil(total / (pn || 20)),
					viewSize : 10,

					labelFirst : '<div class="ico-pre"></div>',
					labelPrev : '上一页',
					labelNext : '下一页',
					labelLast : '<div class="ico-next"></div>',
					islabelLastShow : true
				};

				if ((options.totalPage) > 1) {
					var pager = new Pager('J-pager', options);

					pager.on('pagechange', function(pageNum) {
						location.href = urlBase + 'p=' + pageNum;
						return false;
					});
				}

			});
		}();
		!function() {
			require
					.async(
							[ 'common:widget/ui/dialog/dialog.js' ],
							function(Dialog) {
								$('#j-tttel')
										.on(
												'click',
												function() {
													Dialog
															.confirm({
																width : 560,
																customClassName : "ui-confirm-lz",
																content : '<p>业务违规举报邮箱接受对团购业务违规方面的投诉和建议:<br />投诉邮箱：<a href="mailto:bdnm_jiancha@baidu.com" class="link">bdnm_jiancha@baidu.com</a><br />投诉电话：13269403604 <br/></p><p>廉政邮箱接受对百度糯米员工廉政违法行为、职业操守问题的举报及建议:<br/>举报邮箱：<a href="mailto:bdjb@baidu.com" class="link">bdjb@baidu.com</a><br />举报电话：010-56797369</p><p>以上邮箱和电话不接受用户咨询及商务合作。</p>',
																footer : [ '<a href="javascript:;" class="dialog-btn-cancel j-dialog-btn" data-event="cancel">关闭</a>' ]
																		.join('')
															});
												});
							});
		}();
		!function() {
			$.ajaxSetup({
				cache : false
			});

			//2014_10_11 zhangyijun02: 因增加广告轮播曝光日志逻辑，调整showtrack初始化方式
			require.async([ 'common:widget/ui/usertrack/usertrack.js',
					'common:widget/ui/lazyload/lazyload.js',
					'common:widget/ui/cookie/cookie.js',
					'common:widget/ui/showtrack/showtrack.js',
					'common:widget/ui/items_post/items_post.js' ], function(
					usertrack, LazyLoad, Cookie, ShowTrack, itemsPost) {
				// 初始化点击监听
				usertrack.init();

				new LazyLoad({
					lazy : $('img[data-original]'),
					expect : 250
				});

				itemsPost.init();

				handleBaiduid();

				function handleBaiduid() {
					var getBaiduidUrl = "http://uid.nuomi.baidu.com/getbdid";
					var retryCount = 1;
					getBaiduid();

					function getBaiduid() {

						$.ajax(getBaiduidUrl, {
							dataType : 'jsonp',
							success : function(json) {
								if (json.errno == 0) {
									var baiduid = json.data.baiduid;
									if (baiduid) {
										Cookie.setRaw('BAIDUID', baiduid, 365);
									}
									// 不管有没有baiduid，都发送pv
									sendPv();
								} else {
									if (retryCount--) {
										getBaiduid();
									} else {
										// 最后一次也获取失败
										sendPv();
									}
								}

							}
						});
					}

				}

				function sendPv() {
					usertrack.send({
						da_src : encodeURIComponent($.stringify({
							page : "order_list"
						})),
						element_type : "pv"
					});
				}

				//2014_10_11 zhangyijun02: 因增加广告轮播曝光日志逻辑，调整ShowTrack初始化方式
				//曝光日志统计
				ShowTrack.startShowTrack();
			});

		}();
	</script>
	<script>
		var _trace_page_logid = 0377196297;
	</script>
	<div class="suggestion-wrap search-suggestion"
		id="j-suggestion-1420434376848"
		style="position: absolute; display: none; padding-bottom: 12px; width: 310px; top: 96px; left: 535.5px; z-index: 101;"></div>
</body>
</html>