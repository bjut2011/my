define("list:widget/cinema_list/cinema_list.js",function(n){var e=n("common:widget/ui/dialog/dialog.js"),i=n("common:widget/ui/template/template.js"),t=n("common:widget/map/map.js");$(function(){function n(){$("#j-cinema-list").toggleClass("w-cinema-list-show"),$("#j-btn-more").find("span").html($("#j-cinema-list").hasClass("w-cinema-list-show")?"收起":"查看全部团购商家")}function o(){$("#j-cinema-list .j-get-map").on("click",s.initMapDlg),$("#j-btn-more").on("click",n),$("#j-cinema-list .cinema-info-wrap").on({click:function(){var n=$(this).data("url");window.open(n,"_blank")},mouseenter:function(){$(this).addClass("cinema-info-wrap-hover")},mouseleave:function(){$(this).removeClass("cinema-info-wrap-hover")}})}var a=i.template,s={initMapDlg:function(n){n.stopPropagation();var i=$.parseJSON($(n.target).parents(".cinema-info").attr("data-cinema")),t={shop:[i]},o={onshow:function(n){$("#j-md-shop-all").hide(),s.showSearchInfoWindow(n)}},l={width:"auto",height:"auto",title:"查看地图"},c=$("#tpl-map-dlg").html(),d={shopName:t.shop[0].name,count:t.count,shopList:t.shop,singleShop:!0},h=a(c,d);l.content=h;var u=$.extend(l,o),m=new e(u);return m.center(),m.show(t),!1},showSearchInfoWindow:function(n){function e(){l.open({baidu_latitude:c,baidu_longitude:d})}var i=new t("j-md-map-view");i.autoView(n.shop).addPin(n.shop,e),1!=n.count&&n.count||i.zoomTo(15);var o=n.shop[0],a={title:o.name,width:290,height:"auto",panel:"j-search-result",enableAutoPan:!1,enableSendToPhone:!1,searchTypes:[BMAPLIB_TAB_TO_HERE,BMAPLIB_TAB_SEARCH,BMAPLIB_TAB_FROM_HERE]},s='<p style="line-height: 150%;">'+o.address+"<br/>"+o.phone+"</p>",l=new t.searchInfoWindow(i.getMapOrigin(),s,a),c=o.baidu_latitude,d=o.baidu_longitude;i.zoomTo(15).centerTo({baidu_latitude:c,baidu_longitude:d}),l.open({baidu_latitude:c,baidu_longitude:d}),$("#j-md-branch-view .shop-branch").on("click",e)}};o()})});
;define("list:widget/city_search/city_search.js",function(t,i,n){function e(t){if(t!==y){var i=t.getAttribute("data-index");p.style.display="none",(p=v[i]).style.display="block",y.className=y.className.replace(" tab-active",""),(y=t).className+=" tab-active"}}function a(t){location.href=h+t}function o(t){var i=t.getAttribute("data-domain-url");f.val(t.innerHTML),a(i)}function c(){var t=m[0],i=f.offset();t.style.top=i.top+f.innerHeight()+"px",t.style.left=i.left+"px"}function r(t){(m=$(document.getElementById(t).innerHTML).appendTo("body")).on("click",function(t){var i=t.target;switch(i.getAttribute("data-type")){case"cityTab":e(i);break;case"cityItem":o(i)}}),c(),v=m.find("div.city-list-wrap").get(),p=v[0],y=m.find("a.tab-item")[0],f.on("click",function(){c(),d.isShow()&&d.hide(),w||(m.show(),w=!0),$(this).select()}),$("body").on("click",function(t){var i=t.target;"cityTab"!=i.getAttribute("data-type")&&i.id!=g&&w&&(m.hide(),w=!1)}),$(window).on("resize",function(){c()})}function s(t){d=new b("#"+t,{delay:100,className:"city-suggestion",itemTem:'<a class="j-suggestion-item suggestion-item" data-domain-url="${domain_url}">${city_name}</a>',url:T,isCatch:!1,onconfirm:function(t){var i=t.target,n=i.getAttribute("data-domain-url");"找不到相关城市"!==i.innerHTML&&(f.attr("data-domain-url",n).val(i.innerHTML),a(n))},formatParam:function(t){return{kw:$.trim(t)}},formatRespons:function(t){var i=[],n=t.data.list;return 0===t.errno?n:i},onShow:function(){m.hide(),w=!1},onDataEmpty:function(){return'<p class="city-no-result">找不到相关城市</p>'},onActiveItem:function(t){var i=t.target;"找不到相关城市"===i.innerHTML?($(".city-no-result").removeClass(this.activeItemClass),f.select()):f.attr("data-domain-url",i.getAttribute("data-domain-url")).val(i.innerHTML)}})}function u(t){""!=t.searchBtnId&&$("#"+t.searchBtnId).on("click",function(){var t;(t=f.attr("data-domain-url"))&&a(t)})}function l(t){g=t.inputId,f=$("#"+t.inputId),h="http://"+location.host+"/",s(g),r(t.cityFilterId),u(t)}var d,m,f,g,y,p,v,h,b=t("common:widget/ui/suggestion/suggestion.js"),w=!1,T="/pcindex/main/citysug";n.exports={init:l}});
;define("list:widget/filter_ab/filter_ab.js",function(o){var e=o("common:widget/ui/cookie/cookie.js");$(function(){var o=$(".w-filter-item-ab"),i=e.get("NUOMI_MEISHI_SCROLLTOP_AB");i&&($(document).scrollTop(i),e.remove("NUOMI_MEISHI_SCROLLTOP_AB")),o.on("click",function(){e.set("NUOMI_MEISHI_SCROLLTOP_AB",$(document).scrollTop().toString())})})});
;define("list:widget/filter_ab/filter_district_ab/filter_district_ab.js",function(t,i,e){function s(){c.on({click:r.tabLiClickHandler});var t=l.get("NUOMI_MEISHI_DISTRICT_AB");t&&$(".j-district-tab-li"+t).trigger("click")}var c=$(".j-district-tab-li"),d=$(".j-district-cont"),l=t("common:widget/ui/cookie/cookie.js"),r={tabLiClickHandler:function(){var t=$(this).attr("index"),i=$(".j-district-cont"+t);c.removeClass("selected"),$(this).addClass("selected"),d.removeClass("selected"),i.addClass("selected"),l.set("NUOMI_MEISHI_DISTRICT_AB",t)}};e.exports={init:s}});
;define("list:widget/filter_ab/filter_normal_ab/filter_normal_ab.js",function(e,t,o){function i(){h.height()<l.height()?n.show():h.height()>=l.height()&&h.height(l.height()),n.on("click",m.moreButtonClickHandler),r||n.on({mouseenter:m.moreButtonMouseenter,mouseleave:m.moreButtonMouseleave});var e=u.get("NUOMI_MEISHI_MORE_AB");if(e){var t="unfold"==e?!0:!1;t&&!n.hasClass("unfold")?(n.addClass("unfold"),h.height(l.height()),s.html("收起")):!t&&n.hasClass("unfold")&&(n.removeClass("unfold"),h.height(75),s.html("更多"))}}var s=$(".j-more-or-less"),h=$(".j-filter-items-wrap-ab").eq(0),l=$(".j-filter-items-ab").eq(0),n=$(".j-more-button").eq(0),a=navigator.userAgent.toLowerCase(),r=a.match(/iPad/i)?!0:!1,u=e("common:widget/ui/cookie/cookie.js"),m={moreButtonClickHandler:function(){$(this).hasClass("unfold")?($(this).removeClass("unfold"),h.height(75),s.html("更多"),u.set("NUOMI_MEISHI_MORE_AB","fold")):($(this).addClass("unfold"),h.height(l.height()),s.html("收起"),u.set("NUOMI_MEISHI_MORE_AB","unfold"))},moreButtonMouseenter:function(){$(this).addClass("hover")},moreButtonMouseleave:function(){$(this).removeClass("hover")}};o.exports={init:i}});
;define("list:widget/filter_ab/filter_top_nav/filter_top_nav.js",function(){$(function(){function e(){i()}function i(){t?($(document).on({touchstart:function(){this._isMove=!1},touchmove:function(){this._isMove=!0},touchend:n.meishiPadBodyClickHandler}),s.on("click",n.meishiPadClickHandler)):a.on({mouseenter:function(){$(this).addClass("hover")},mouseleave:function(){$(this).removeClass("hover")}})}var o=navigator.userAgent.toLowerCase(),t=o.match(/iPad/i)?!0:!1,s=$(".j-meishi-category"),a=$(".j-category-wrapper"),n={meishiPadClickHandler:function(){s.toggleClass("clicked"),s.hasClass("clicked")?a.addClass("hover"):a.removeClass("hover")},meishiPadBodyClickHandler:function(e){this._isMove||0==$(e.target).parents(".j-category-wrapper").length&&(s.removeClass("clicked"),a.removeClass("hover"))}};e()})});
;define("list:widget/hotel_search_bar/hotel_search_bar.js",function(i,n,t){function o(){a.on("click",function(){s||(s=!0,r.show())}),$("body").on("click",function(i){var n=i.target;n.id!=d&&s&&(s=!1,r.hide())}),$("#j-hotel-pop-district").on("click",function(i){var n=i.target;-1!==n.className.indexOf("position-item")&&a.val(n.innerHTML)})}function c(i){e=i,r=$("#"+i.popId),a=$("#"+i.inputId),d=i.inputId,o()}var e,a,r,d,s=!1;t.exports={init:c}});
;define("list:widget/ui/ad/ad.js",function(a,e,i){i.exports={init:function(){$.post("/mis/ad/ad?adarea_id=3",{},function(e){e=$.parseJSON(e);var i=e.data[3];if(i&&i.length>0){$adContainer=$(".p-index-ad"),$adContainer.attr("style","display:block;"),$adTemplate=$('<div class="w-ad j-index-ad"></div>'),$imgContainer=$('<div id="j-ad" class="clearfix"></div>');for(var n=i.length>1?'bn_slide="banner&position"':'bn_box="banner&position"',t=0;t<i.length;t++){var d=i[t],l=$("<a "+n+' mon="element=adver_'+d.id+"&position=adver_"+(t+1)+'" href="'+d.url+'" class="item" target="_blank" title="'+d.title+'"><img src="'+d.img+'" alt="'+d.title+'" /></a>');0==t&&l.addClass("hover"),$imgContainer.append(l)}$adTemplate.append($imgContainer);var r=$('<a href="javascript:void(0);" title="关闭广告" class="close-ad" id="j-ad-close">&Chi;</a>');$adTemplate.append(r);var o=$('<ul class="num clearfix" id="j-ad-num"></ul>');1==i.length&&o.attr("style","display:none");for(var t=0;t<i.length;t++){var d=i[t],s=$('<li data-type="'+t+'">'+(t+1)+"</li>");0==t&&s.addClass("hover"),o.append(s)}$adTemplate.append(o),$adContainer.append($adTemplate);var p=a("common:widget/ui/sliderbar/sliderbar.js");$imgContainer.size()>0&&new p({container:$imgContainer,pageNumber:$("#j-ad-num li"),direction:"top",interval:3e3,timer:400,exposureLog:!0,callback:function(){$("#j-ad-close").bind("click",function(){$(this).parents(".j-index-ad").hide()})}})}})}}});
;define("list:widget/ui/ajax_get_goods/ajax_get_goods.js",function(o,a,s){s.exports={init:function(o){var a=this;this.goodsWrap=o.goodsWrap,this.asyncLoadPage=2,this.canAsyncLoad=!0,this.asyncLoadNum=0,this.goodsNum=F.context("goods_num"),this.asyncLoadMaxNum=F.context("goods_total")/this.goodsNum>2?2:1,$(window).on("scroll",function(){var o=$(document).scrollTop()+$(window).height(),s=a.goodsWrap.find(".w-good-item").last().offset().top-1504;o>=s&&a.canAsyncLoad&&(a.canAsyncLoad=!1,a.sendRuqest())})},sendRuqest:function(){var o=this,a=F.context("page_base_url"),s={async_load_page:o.asyncLoadPage};$.get(a,s,function(a){o.goodsWrap.find(".w-goods-area").append(a);var s=$(document).scrollTop()+$(window).height(),n=o.goodsWrap.find(".w-good-item").last().offset().top-752;o.asyncLoadNum++,o.asyncLoadPage++,o.asyncLoadNum<o.asyncLoadMaxNum&&n>s&&(o.canAsyncLoad=!0)},"html")}}});