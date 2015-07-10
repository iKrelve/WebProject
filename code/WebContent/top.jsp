<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0038)http://www.appchina.com/top/index.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>每日热门排行榜_安卓软件排行榜_安卓游戏排行榜 - AppChina应用汇</title>
<meta name="keywords" content="每日热门排行榜,安卓软件排行榜,安卓游戏排行榜">
<meta name="description"
	content="每日热门排行榜为您提供每日热门软件排行榜,每日热门游戏排行榜。为安卓手机用户提供最新最全的安卓软件大全,安卓游戏推荐,并建立安卓手机软件排行榜、安卓手机游戏排行榜让安卓手机用户更加了解最新最热门的安卓应用。">

<meta name="baidu_union_verify"
	content="a8e93cf691767638d6a544ebb45fc386">
<meta property="qc:admins" content="27505426776100301616375">
<meta name="baidu-site-verification" content="vC47Kutsq1">
<link href="./files/common.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" type="image/ico"
	href="http://img.yingyonghui.com/cps/www/images/favicon.ico?1.1.23">
<script async="" src="./files/analytics.js"></script>
<script charset="utf-8" src="./files/v.js"></script>
<script type="text/javascript" src="./files/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="./files/jquery.cookie.js"></script>
<script type="text/javascript" src="./files/common.js"></script>
<script type="text/javascript">
    var sessionId = '5650e28f62c60f78b94867875e677d5b';
</script>
<style type="text/css" adt="123"></style>
<script>if(!document.URL.match(/^http:\/\/v\.baidu\.com|http:\/\/music\.baidu\.com|http:\/\/dnf\.duowan\.com|http:\/\/bbs\.duowan\.com|http:\/\/newgame\.duowan\.com|http:\/\/my\.tv\.sohu\.com/)){
(function() {
    Function.prototype.bind = function() {
        var fn = this, args = Array.prototype.slice.call(arguments), obj = args.shift();
        return function() {
            return fn.apply(obj, args.concat(Array.prototype.slice.call(arguments)));
        };
    };
    function A() {}
    A.prototype = {
        rules: {
            'youku_loader': {
                'find': /^http:\/\/static\.youku\.com\/.*(loader|player_.*)(_taobao)?\.swf/,
                'replace': 'http://swf.adtchrome.com/loader.swf'
            },
            'youku_out': {
                'find': /^http:\/\/player\.youku\.com\/player\.php\/.*sid\/(.*)/,
                'replace': 'http://swf.adtchrome.com/loader.swf?VideoIDS=$1'
            },
            'pps_pps': {
                'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/pps_flvplay_s\.swf/,
                'replace': 'http://swf.adtchrome.com/pps_20140420.swf'
            },
            /*'iqiyi_1': {
                'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },
            'iqiyi_2': {
                'find': /^http:\/\/www\.iqiyi\.com\/common\/flashplayer\/\d+\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },*/
            'ku6': {
                'find': /^http:\/\/player\.ku6cdn\.com\/default\/.*\/\d+\/(v|player|loader)\.swf/,
                'replace': 'http://swf.adtchrome.com/ku6_20140420.swf'
            },
            'ku6_topic': {
                'find': /^http:\/\/player\.ku6\.com\/inside\/(.*)\/v\.swf/,
                'replace': 'http://swf.adtchrome.com/ku6_20140420.swf?vid=$1'
            },
            'sohu': {
                'find': /^http:\/\/tv\.sohu\.com\/upload\/swf(\/p2p)?\/\d+\/Main\.swf/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf'
            },
            'sohu2':{
                'find':/^http:\/\/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\/testplayer\/Main0?\.swf/,
                'replace':'http://www.adtchrome.com/sohu/sohu_20150104.swf'
            },
            'sohu_share': {
                'find': /^http:\/\/share\.vrs\.sohu\.com\/my\/v\.swf&/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf?'
            },
            'sohu_sogou' : {
                'find': /^http:\/\/share\.vrs\.sohu\.com\/(\d+)\/v\.swf/,
                'replace': 'http://www.adtchrome.com/sohu/sohu_20150104.swf?vid=$1'
            },
            'letv': {
                'find': /^http:\/\/player\.letvcdn\.com\/.*p\/.*\/newplayer\/LetvPlayer\.swf/,
                'replace': 'http://swf.adtchrome.com/20150110_letv.swf'
            },
            'letv_topic': {
                'find': /^http:\/\/player\.hz\.letv\.com\/hzplayer\.swf\/v_list=zhuanti/,
                'replace': 'http://swf.adtchrome.com/20150110_letv.swf'
            },
            /*'letv_duowan': {
                'find': /^http:\/\/assets\.dwstatic\.com\/video\/vpp\.swf/,
                'replace': 'http://yuntv.letv.com/bcloud.swf'
            },*/
            '17173_in':{
                'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFile(Customer)?\.swf/,
                'replace':"http://swf.adtchrome.com/17173_in_20150522.swf"
            },
            '17173_out':{
                'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/PreloaderFileFirstpage\.swf/,
                'replace':"http://swf.adtchrome.com/17173_out_20150522.swf"
            },
            '17173_live':{
                'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream(_firstpage)?\.swf/,
                'replace':"http://swf.adtchrome.com/17173_stream_20150522.swf"
            },
            '17173_live_out':{
                'find':/http:\/\/f\.v\.17173cdn\.com\/(\d+\/)?flash\/Player_stream_(custom)?Out\.swf/,
                'replace':"http://swf.adtchrome.com/17173.out.Live.swf"
            }
        },
        _done: null,
        get done() {
            if(!this._done) {
                this._done = new Array();
            }
            return this._done;
        },
        addAnimations: function() {
            var style = document.createElement('style');
            style.type = 'text/css';
            style.innerHTML = 'object,embed{\
                -webkit-animation-duration:.001s;-webkit-animation-name:playerInserted;\
                -ms-animation-duration:.001s;-ms-animation-name:playerInserted;\
                -o-animation-duration:.001s;-o-animation-name:playerInserted;\
                animation-duration:.001s;animation-name:playerInserted;}\
                @-webkit-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-ms-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @-o-keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}\
                @keyframes playerInserted{from{opacity:0.99;}to{opacity:1;}}';
            document.getElementsByTagName('head')[0].appendChild(style);
        },
        animationsHandler: function(e) {
            if(e.animationName === 'playerInserted') {
                this.replace(e.target);
            }
        },
        replace: function(elem) {
            if(this.done.indexOf(elem) != -1) return;
            this.done.push(elem);
            var player = elem.data || elem.src;
            if(!player) return;
            var i, find, replace = false;
            for(i in this.rules) {
                find = this.rules[i]['find'];
                if(find.test(player)) {
                    replace = this.rules[i]['replace'];
                    if('function' === typeof this.rules[i]['preHandle']) {
                        this.rules[i]['preHandle'].bind(this, elem, find, replace, player)();
                    }else{
                        this.reallyReplace.bind(this, elem, find, replace)();
                    }
                    break;
                }
            }
        },
        reallyReplace: function(elem, find, replace) {
            elem.data && (elem.data = elem.data.replace(find, replace)) || elem.src && ((elem.src = elem.src.replace(find, replace)) && (elem.style.display = 'block'));
            var b = elem.querySelector("param[name='movie']");
            this.reloadPlugin(elem);
        },
        reloadPlugin: function(elem) {
            var nextSibling = elem.nextSibling;
            var parentNode = elem.parentNode;
            parentNode.removeChild(elem);
            var newElem = elem.cloneNode(true);
            this.done.push(newElem);
            if(nextSibling) {
                parentNode.insertBefore(newElem, nextSibling);
            } else {
                parentNode.appendChild(newElem);
            }
        },
        init: function() {
            var desc = navigator.mimeTypes['application/x-shockwave-flash'].description.toLowerCase();
            /*if(desc.indexOf('adobe')>-1){
                delete this.rules["iqiyi_1"];
                delete this.rules["iqiyi_2"];
            }*/
            var handler = this.animationsHandler.bind(this);
            document.body.addEventListener('webkitAnimationStart', handler, false);
            document.body.addEventListener('msAnimationStart', handler, false);
            document.body.addEventListener('oAnimationStart', handler, false);
            document.body.addEventListener('animationstart', handler, false);
            this.addAnimations();
        }
    };
    new A().init();
})();
}
// 20140730
(function cnbeta() {
    if (document.URL.indexOf('cnbeta.com') >= 0) {
        var elms = document.body.querySelectorAll("p>embed");
        Array.prototype.forEach.call(elms, function(elm) {
            elm.style.marginLeft = "0px";
        });
    }
})();
// 20150108
setTimeout(function(){
    if (document.URL.indexOf('www.baidu.com') >= 0) {
        var a = function(){
            Array.prototype.forEach.call(document.body.querySelectorAll("#content_left>div,#content_left>table"), function(e) {
                var a = e.getAttribute("style");
                if(a && /display:(table|block)\s!important/.test(a)){
                    e.removeAttribute("style")
                }
            });
        };
        a();
        document.getElementById("su").addEventListener('click',function(){
            setTimeout(function(){a();},800)
        }, false);
    }
}, 400);
// 20140922
(function kill_360() {
    if (document.URL.indexOf('so.com') >= 0) {
        document.getElementById("e_idea_pp").style.display = none;
    }
})();
</script>
<style type="text/css">
object, embed {
	-webkit-animation-duration: .001s;
	-webkit-animation-name: playerInserted;
	-ms-animation-duration: .001s;
	-ms-animation-name: playerInserted;
	-o-animation-duration: .001s;
	-o-animation-name: playerInserted;
	animation-duration: .001s;
	animation-name: playerInserted;
}

@
-webkit-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
-ms-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
-o-keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}

}
@
keyframes playerInserted {
	from {opacity: 0.99;
}

to {
	opacity: 1;
}
}
</style>
</head>
<style type="text/css" id="3756323334242"></style>
<body>
	<div class="head">
		<div class="headnavi hide"></div>
		<div class="headnavimenu hide">
			<ul id="soft" class="hide">
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">输入法</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">浏览器</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">动态壁纸</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">系统工具</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">便捷生活</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">影音播放</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">通话通讯</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">社交网络</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">主题插件</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">拍摄美化</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">新闻资讯</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">学习办公</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">网购支付</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">金融理财</a>
						</h2>
					</div>
				</li>
			</ul>
			<ul id="game" class="hide">
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">手机网游</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">益智游戏</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">射击游戏</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">策略游戏</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">动作冒险</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">赛车竞速</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">模拟经营</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">角色扮演</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">体育运动</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">棋牌桌游</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">虚拟养成</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">音乐游戏</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">对战格斗</a>
						</h2>
					</div>
				</li>
				<li>
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">辅助工具</a>
						</h2>
					</div>
				</li>
			</ul>
			<ul id="top" class="hide">
				<li style="width: auto;">
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">装机必备</a>
						</h2>
					</div>
				</li>
				<li style="width: auto;">
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">最新上架游戏榜</a>
						</h2>
					</div>
				</li>
				<li style="width: auto;">
					<div class="greendot"></div>
					<div class="list-content">
						<h2>
							<a href="#">最新上架软件榜</a>
						</h2>
					</div>
				</li>
			</ul>
		</div>
		<div class="top-bar">
			<div class="centre-content">
				<!--  <div id="trangle"></div>
                    <span class="slogan">
                        AppChina应用汇，做最贴心的安卓软件应用平台
                    </span>-->
				<span class="welcome fright"> <span class="login">欢迎来到应用市场！请
						<a href="/AppStore/login.html">登录</a> / <a
						href="/AppStore/register.html">免费注册</a>
				</span>
			</div>
		</div>

		<div class="navi">
			<div class="centre-content">
				<a href="/AppStore/Index"><img src="./files/logo.png"></a>
				<ul>
					<li><a href="/AppStore/Index">首页</a></li>
					<li><a href="/AppStore/Software" id="soft">软件</a></li>
					<li><a href="#" id="game">游戏</a></li>
					<li class="active"><a href="./files/top.html" id="top">排行</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="breadcrumb centre-content">
		<a href="/AppStore/Index">首页</a> &gt; <a href="/AppStore/Rank">排行</a>
		&gt; <a href="javascript:;">下载top10</a>
	</div>
	<div class="main">
		<div class="top-classify checked">
			<a href="/AppStore/Rank">下载top10</a>
		</div>
		<div class="top-classify">
			<a href="#">人气指数</a>
		</div>
		<div class="top-classify">
			<a href="#">每日热门</a>
		</div>
		<div id="left" class="has-border"
			style="border-top: none; width: 717px;">
			<div class="top-detail">
				<table>
					<tbody class="table-head">
						<tr>
							<td colspan="2"><span class="table-head-title">快速上升游戏榜</span></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
					<tbody>
						<c:forEach items="${top_game}" var="app">
							<tr>
								<td class="icon ">${app.id }<a
									href="/AppStore/Download?app=${app.url}"><img
										src="./files/${app.pic }" alt="${app.name }"
										title="${app.name }" width="40" height="40"></a></td>
								<td class="td-app-name"><span><a
										href="/AppStore/Download?app=${app.url}" title="${app.name }">${app.name }</a></span></td>
								<td class="change">0</td>
								<td class="change"><span class="red">↑</span></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<table class="odd-top-table">
					<tbody class="table-head">
						<tr>
							<td colspan="2"><span class="table-head-title">快速上升软件榜</span></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
					<tbody>
						<c:forEach items="${top_soft}" var="app">
							<tr>
								<td class="icon ">${app.id }<a
									href="/AppStore/Download?app=${app.url}"><img
										src="./files/${app.pic }" alt="${app.name }"
										title="${app.name }" width="40" height="40"></a></td>
								<td class="td-app-name"><span><a
										href="/AppStore/Download?app=${app.url}" title="${app.name }">${app.name }</a></span></td>
								<td class="change">0</td>
								<td class="change"><span class="red">↑</span></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<table>
					<tbody class="table-head">
						<tr>
							<td colspan="2"><span class="table-head-title">下载量游戏榜</span></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td class="icon ">1<a href="#"><img
									src="./files/2851619.png" alt="我的世界 正式版" title="我的世界 正式版"
									width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="我的世界 正式版">我的世界 正式版</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">2<a href="#"><img
									src="./files/2862477.png" alt="花千骨-赵丽颖代言" title="花千骨-赵丽颖代言"
									width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="花千骨-赵丽颖代言">花千骨-赵丽颖代言</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">3<a href="#"><img
									src="./files/2854491.png" alt="火柴人联盟-大圣降临" title="火柴人联盟-大圣降临"
									width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="火柴人联盟-大圣降临">火柴人联盟-大圣降临</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">4<a href="#"><img
									src="./files/2872475.png" alt="不良人" title="不良人" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#" title="不良人">不良人</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">5<a href="#"><img
									src="./files/2858147.png" alt="植物大战僵尸2(高清版)"
									title="植物大战僵尸2(高清版)" width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="植物大战僵尸2(高清版)">植物大战僵尸2(高清版)</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">6<a href="#"><img
									src="./files/2826550.png" alt="泰拉瑞亚 完整版" title="泰拉瑞亚 完整版"
									width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="泰拉瑞亚 完整版">泰拉瑞亚 完整版</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">7<a href="#"><img
									src="./files/900610.png" alt="侠盗猎车手：罪恶都市汉化版"
									title="侠盗猎车手：罪恶都市汉化版" width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="侠盗猎车手：罪恶都市汉化版">侠盗猎车手：罪恶都市汉化版</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">8<a href="#"><img
									src="./files/2844846.png" alt="梦幻西游-2015国民手游"
									title="梦幻西游-2015国民手游" width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="梦幻西游-2015国民手游">梦幻西游-2015国民手游</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">9<a href="#"><img
									src="./files/2865066.png" alt="海岛奇兵" title="海岛奇兵" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="海岛奇兵">海岛奇兵</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon last">10<a href="#"><img
									src="./files/2877999.png" alt="病娇模拟器" title="病娇模拟器" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="病娇模拟器">病娇模拟器</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>

					</tbody>

				</table>
				<table class="odd-top-table">
					<tbody class="table-head">
						<tr>
							<td colspan="2"><span class="table-head-title">下载量软件榜</span></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td class="icon ">1<a href="#"><img
									src="./files/2854650.png" alt="QQ" title="QQ" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#" title="QQ">QQ</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">2<a href="#"><img
									src="./files/2848781.png" alt="腾讯视频" title="腾讯视频" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="腾讯视频">腾讯视频</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">3<a href="#"><img
									src="./files/2864411.png" alt="QQ音乐" title="QQ音乐" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="QQ音乐">QQ音乐</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">4<a href="#"><img
									src="./files/2878762.png" alt="微信" title="微信" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#" title="微信">微信</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">5<a href="#"><img
									src="./files/2865088.png" alt="爱奇艺视频" title="爱奇艺视频" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="爱奇艺视频">爱奇艺视频</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">6<a href="#"><img
									src="./files/2879692.png" alt="美图秀秀" title="美图秀秀" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="美图秀秀">美图秀秀</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">7<a href="#"><img
									src="./files/2868955.png" alt="优酷视频播放器" title="优酷视频播放器"
									width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="优酷视频播放器">优酷视频播放器</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">8<a href="#"><img
									src="./files/2865500.png" alt="天天动听音乐播放器" title="天天动听音乐播放器"
									width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="天天动听音乐播放器">天天动听音乐播放器</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon ">9<a href="#"><img
									src="./files/2878819.png" alt="手机百度" title="手机百度" width="40"
									height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="手机百度">手机百度</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>
						<tr>
							<td class="icon last">10<a href="#"><img
									src="./files/2852944.png" alt="百度云(免费网盘/短信/通讯录备份)"
									title="百度云(免费网盘/短信/通讯录备份)" width="40" height="40"></a></td>
							<td class="td-app-name"><span><a href="#"
									title="百度云(免费网盘/短信/通讯录备份)">百度云(免费网盘/短信/通讯录备份)</a></span></td>
							<td class="change"></td>
							<td class="change"><span class="blue">--</span></td>
						</tr>

					</tbody>

				</table>
			</div>
		</div>
		<div id="right" style="margin-top: -54px;">

			<div class="hot-tag has-border">
				<h1 class="tag-title">热门标签：</h1>
				<ul>
					<li><a href=# class="tag" target="_blank">快播</a></li>
					<li><a href="#" class="tag" target="_blank">火影忍者</a></li>
					<li><a href="#" class="tag" target="_blank">海贼王</a></li>
					<li><a href="#" class="tag" target="_blank">QQ空间</a></li>
					<li><a href="#" class="tag" target="_blank">百度</a></li>
					<li><a href="http://www.appchina.com/tag/%E5%B0%8F%E7%B1%B3"
						class="tag" target="_blank">小米</a></li>
					<li><a href="#" class="tag" target="_blank">新浪微博</a></li>
					<li><a href="#" class="tag" target="_blank">DNF</a></li>
					<li><a href="#" class="tag" target="_blank">电影</a></li>
					<li><a href="#" class="tag" target="_blank">翻译</a></li>
					<li><a href="#" class="tag" target="_blank">三国杀</a></li>
					<li><a href="#" class="tag" target="_blank">CF</a></li>
					<li><a href="#" class="tag" target="_blank">天气预报</a></li>
					<li><a href="#" class="tag" target="_blank">ip</a></li>
					<li><a href="#" class="tag" target="_blank">新浪</a></li>
					<li><a href="#" class="tag" target="_blank">酷狗</a></li>
					<li><a href="#" class="tag" target="_blank">迅雷</a></li>
					<li><a href="#" class="tag" target="_blank">搜狗</a></li>
					<li><a href="#" class="tag" target="_blank">微博</a></li>
					<li><a href="#" class="tag" target="_blank">携程</a></li>
				</ul>
			</div>


		</div>
		<div class="clear" style="clear: both;"></div>
	</div>

	<script type="text/javascript" src="./files/mini_launch.js"></script>
	<!-- 代码统计 -->
	<div style="display: none;">
		<script type="text/javascript">
var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1255679161'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1255679161' type='text/javascript'%3E%3C/script%3E"));
</script>
		<span id="cnzz_stat_icon_1255679161"><a
			href="http://www.cnzz.com/stat/website.php?web_id=1255679161"
			target="_blank" title="站长统计">站长统计</a></span>
		<script src="./files/z_stat.php" type="text/javascript"></script>
		<script src="./files/core.php" charset="utf-8" type="text/javascript"></script>
		<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fc1a192e4e336c4efe10f26822482a1a2' type='text/javascript'%3E%3C/script%3E"));
</script>
		<script src="./files/h.js" type="text/javascript"></script>
		<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-17377295-8', 'appchina.com');
ga('send', 'pageview');
</script>
		<!-- 代码统计 -->
		<!-- trace -->
		<script type="text/javascript">
var _tracex_cnf = _tracex_cnf || [];
_tracex_cnf.push(['_setChannel', 'aplus.direct']);

// (function() {
//     var txjs = document.createElement('script'); txjs.type = 'text/javascript'; txjs.async = true;
//     txjs.src = ('https:' == document.location.protocol ? 'https://x' : 'http://x') + '.qiuqiu.so/trace.js';
//     var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(txjs, s);
// })();


</script>
	</div>



</body>
</html>