<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0024)http://www.appchina.com/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>应用市场项目</title>
<meta name="keywords" content="Android应用市场">
<meta name="description" content="Web工程项目-应用市场">

<meta name="baidu-site-verification" content="vC47Kutsq1">
<link href="./files/common.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" type="image/ico"
	href="http://img.yingyonghui.com/cps/www/images/favicon.ico?1.1.23">
<script async="" src="./files/analytics.js"></script>
<script charset="utf-8" src="./files/v.js"></script>
<script type="text/javascript" src="./files/jquery-1.7.2.min.js"></script>
<style type="text/css" adt="123"></style>
<script type="text/javascript" src="./files/jquery.cookie.js"></script>
<script type="text/javascript" src="./files/common.js"></script>
<script type="text/javascript">
    var sessionId = '2b838805283542761c7909275596520c';
</script>
<script>if(!document.URL.match(new RegExp('^http:\\/\\/(v|music|dnf|bbs|newgame)\\.(baidu|duowan)\\.com'))){
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
            'iqiyi_1': {
                'find': /^http:\/\/www\.iqiyi\.com\/player\/cupid\/common\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },
            'iqiyi_2': {
                'find': /^http:\/\/www\.iqiyi\.com\/common\/flashplayer\/\d+\/.+\.swf$/,
                'replace': 'http://swf.adtchrome.com/iqiyi_20140624.swf'
            },
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
            'letv_duowan': {
                'find': /^http:\/\/assets\.dwstatic\.com\/video\/vpp\.swf/,
                'replace': 'http://yuntv.letv.com/bcloud.swf'
            },
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
            if(desc.indexOf('adobe')>-1){
                delete this.rules["iqiyi_1"];
                delete this.rules["iqiyi_2"];
            }
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
<style type="text/css" id="2464649094903"></style>
<body>
	<div class="head">
		<div class="headnavi hide" style="display: none; height: 141px;"></div>
		<div class="headnavimenu hide" style="display: none;">
			<ul id="soft" class="hide" style="display: none;">
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
			<ul id="game" class="hide" style="display: none;">
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
			<ul id="top" class="hide" style="display: none;">
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
						<a href="./login.html">登录</a> / <a href="./register.html">免费注册</a>
				</span>
			</div>
		</div>

		<div class="navi">
			<div class="centre-content">
				<a href="/AppStore/Index"><img src="./files/logo.png"
					style="height: 90px"></a>
				<ul>
					<li class="active"><a href="./files/index.html">首页</a></li>
					<li><a href="/AppStore/Software" id="soft">软件</a></li>
					<li><a href="#" id="game">游戏</a></li>
					<li><a href="/AppStore/Rank" id="top">排行</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="./files/min.jq.ImageSlide_lazyload.js"></script>

	<style>
#itunes.slide {
	width: 740px;
	height: 280px;
	overflow: hidden;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

#itunes .big {
	float: left;
	width: 600px;
}

#itunes .big img {
	width: 860px;
	height: 280px;
}

#itunes .small {
	float: right;
	width: 140px;
	height: 280px;
	position: relative;
	margin: 0;
	overflow: hidden;
}

#itunes .small li {
	margin: 0;
	float: left;
}

#itunes .small img {
	width: 140px;
	height: 70px;
	overflow: hidden;
	display: block;
	margin: 0;
}

#itunes .list {
	position: absolute;
	top: 0;
	left: 0;
}

#itunes .next-btn {
	position: absolute;
	width: 50px;
	height: 50px;
	bottom: 5px;
	left: 50px;
	background:
		url('http://img.yingyonghui.com/wsrc/app_plus/public/images/turnNext.png')
		center 3px no-repeat;
	display: none;
	cursor: pointer;
	border-radius: 50px;
}
</style>
	<div class="main">
		<div class="focus">
			<div class="mainbar" style="width: 1000px">
				<div class="slide" id="itunes" style="width: 1000px">
					<ul class="big" id="show" style="width: 860px">
						<li style="display: list-item; width: 860px"><a
							href="/AppStore/Download?app=meituan.apk" target="_blank"><img
								src="./files/img_6(3).jpg" alt="美团-团购美食电影酒店优惠"
								title="美团-团购美食电影酒店优惠"></a></li>
					</ul>
					<div class="small">
						<ul class="list" id="list" style="top: 0px;">
							<c:forEach items="${small}" var="app">
								<li style="display: list-item;"><a
									href="/AppStore/Download?app=${app.url}" target="_blank"><img
										src="./files/${app.pic}" alt="${app.title}"
										title="${app.title}"></a></li>
							</c:forEach>
						</ul>
						<div class="next-btn" id="buttonNext" style="display: none;"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="hot-game-app has-border">
			<div class="left-so">
				<div class="so" id="">
					<a href="javascript:;"><span>单机游戏</span></a>
				</div>
				<div class="so" id="checked">
					<a href="javascript:;"><span>网络游戏</span></a>
				</div>
			</div>
			<div class="game-app-name">
				<ul id="single-game" class="hide">
					<c:forEach items="${local}" var="app">
						<li><a href="/AppStore/Download?app=${app.url}"
							color="#009900" style="color: #009900" target="_blank">${app.title}</a></li>
					</c:forEach>
					<li><a href="/AppStore/Download?app=buyu.apk" color="#ff0000"
						style="color: #ff0000" target="_blank">千炮捕鱼2赢话费</a></li>
					<li><a href="/AppStore/Download?app=daydayrun.apk"
						color="#ff0000" style="color: #ff0000" target="_blank">天天跑酷3D</a></li>
					<li><a href="/AppStore/Download?app=MengMiao.apk"
						color="#009900" style="color: rgb(0, 153, 0);" target="_blank">特技战斗喵</a></li>
					<li><a href="/AppStore/Download?app=warheros.apk"
						color="#ff0000" style="color: rgb(255, 0, 0);" target="_blank">魔兽英雄传Ⅱ</a></li>
					<li><a href="/AppStore/Download?app=fight3.apk"
						color="#ff0000" style="color: #ff0000" target="_blank">雷电Ⅲ致命空袭</a></li>
					<li><a href="/AppStore/Download?app=qianwang.apk"
						color="#ff0000" style="color: #ff0000" target="_blank">千王AAA</a></li>
					<li><a href="/AppStore/Download?app=wukong.apk"
						color="#009900" style="color: #009900" target="_blank">悟空蹦蹦蹦2
							萝莉版</a></li>
					<li><a href="/AppStore/Download?app=honey.apk" color="#009900"
						style="color: #009900" target="_blank">哈尼哈尼</a></li>
					<li><a href="/AppStore/Download?app=baozi.apk" color="#009900"
						style="color: #009900" target="_blank">豹子王</a></li>
					<li><a href="/AppStore/Download?app=doudizhu.apk"
						color="#ff0000" style="color: #ff0000" target="_blank">欢乐途游斗地主</a></li>
					<li><a href="/AppStore/Download?app=moshou.apk"
						color="#ff0000" style="color: rgb(255, 0, 0);" target="_blank">魔兽战纪官方版</a></li>
					<li><a href="/AppStore/Download?app=buyu.apk" color="#009900"
						style="color: rgb(0, 153, 0);" target="_blank">天天捕鱼2015</a></li>
					<li><a href="/AppStore/Download?app=xiaoxiaole.apk"
						color="#009900" style="color: #009900" target="_blank">开心消消乐</a></li>
					<li><a href="/AppStore/Download?app=shijie.apk"
						color="#ff0000" style="color: #ff0000" target="_blank">世界OL_终极PK（战神版）</a></li>
					<li><a href="/AppStore/Download?app=xiaomie.apk"
						color="#ff0000" style="color: #ff0000" target="_blank">消灭星星2015豪华版</a></li>
				</ul>
				<ul id="online-game" class="">
					<c:forEach items="${online}" var="app">
						<li><a href="/AppStore/Download?app=${app.url}"
							color="#009900" style="color: #009900" target="_blank">${app.title}</a></li>
					</c:forEach>

					<li><a href="/AppStore/Download?app=shengdoushi.apk"
						color="#ff0000" style="color: rgb(255, 0, 0);" target="_blank">圣斗士星矢(正版授权)</a></li>
					<li><a href="/AppStore/Download?app=moon.apk" color="#009900"
						style="color: rgb(0, 153, 0);" target="_blank">秦时明月</a></li>
					<li><a href="/AppStore/Download?app=yiji.apk" color="#009900"
						style="color: rgb(0, 153, 0);" target="_blank">一姬当千</a></li>
					<li><a href="/AppStore/Download?app=sanguo.apk"
						color="#009900" style="color: rgb(0, 153, 0);" target="_blank">放开那三国</a></li>
					<li><a href="/AppStore/Download?app=hanglu.apk"
						color="#ff0000" style="color: #ff0000" target="_blank">伟大航路</a></li>
					<li><a href="/AppStore/Download?app=tlbb3D.apk"
						color="#009900" style="color: #009900" target="_blank">天龙八部3D</a></li>
					<li><a href="/AppStore/Download?app=jianglin.apk"
						color="#ff0000" style="color: rgb(255, 0, 0);" target="_blank">圣衣降临</a></li>
					<li><a href="/AppStore/Download?app=superhero.apk"
						color="#009900" style="color: rgb(0, 153, 0);" target="_blank">超级英雄</a></li>
					<li><a href="/AppStore/Download?app=gujianqitan.apk"
						color="#009900" style="color: #009900" target="_blank">古剑奇谭</a></li>
					<li><a href="/AppStore/Download?app=koudai.apk"
						color="#009900" style="color: #009900" target="_blank">口袋修仙</a></li>
					<li><a href="/AppStore/Download?app=shikong.apk"
						color="#009900" style="color: rgb(0, 153, 0);" target="_blank">时空猎人</a></li>
					<li><a href="/AppStore/Download?app=nvshen.apk"
						color="#009900" style="color: #009900" target="_blank">女神联盟</a></li>
					<li><a href="/AppStore/Download?app=maoxiandao.apk"
						color="#ff0000" style="color: rgb(255, 0, 0);" target="_blank">格斗冒险岛</a></li>
					<li><a href="/AppStore/Download?app=diguo.apk" color="#009900"
						style="color: #009900" target="_blank">战舰帝国</a></li>
					<li><a href="/AppStore/Download?app=sword.apk" color="#009900"
						style="color: #009900" target="_blank">英雄之剑</a></li>
				</ul>
			</div>
		</div>
		<div class="main-content has-border">
			<div id="left" style="margin-left: 20px; width: 697px;">
				<div class="hot-app-classify">
					<h1>安卓游戏/应用推荐</h1>
				</div>
				<ul class="index-hot-app-list">
					<c:forEach items="${recommend}" var="app">
						<li><a href="/AppStore/Download?app=${app.url }"
							target="_blank"> <img alt="${app.name }" title="${app.name }"
								class="Content_Icon" src="./files/${app.pic }"> <img
								class="Content_Label" src="./files/${app.star }">
								<h2>${app.name }</h2>
						</a> <a class="index-view-detail"
							href="/AppStore/Download?app=${app.url }" target="_blank">点击下载</a>
							<span class="downloadCountShow">${app.click }</span></li>
						<div class="moreinfo hide" style="left: 196.5px; top: 623px;">
							<h2>${app.name }</h2>
							<span class="size">${app.weight }</span> <span class="shortdesc">${app.desc }</span>
							<span class="moreinfo-catename">${app.type }</span>
						</div>
					</c:forEach>

					<li><a href="/AppStore/Download?app=maoxiandao.apk"
						target="_blank"> <img alt="格斗冒险岛" title="格斗冒险岛"
							class="Content_Icon" src="./files/2821624.png"> <img
							class="Content_Label" src="./files/recommand.png">
							<h2>格斗冒险岛</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=maoxiandao.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">5.5万-5.6万下载</span></li>
					<div class="moreinfo hide">
						<h2>格斗冒险岛</h2>
						<span class="size">大小：138.07MB</span> <span class="shortdesc">超清画质+经典小霸王</span>
						<span class="moreinfo-catename">角色扮演</span>
					</div>
					<li><a href="/AppStore/Download?app=hjyx.apk" target="_blank">
							<img alt="合金英雄" title="合金英雄" class="Content_Icon"
							src="./files/2853634.png"> <img class="Content_Label"
							src="./files/acti.png">
							<h2>合金英雄</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=hjyx.apk" target="_blank">点击下载</a> <span
						class="downloadCountShow">1万-1.1万下载</span></li>
					<div class="moreinfo hide">
						<h2>合金英雄</h2>
						<span class="size">大小：117.97MB</span> <span class="shortdesc">最热血的3D科幻射击手游</span>
						<span class="moreinfo-catename">射击游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=ifeng.apk" target="_blank">
							<img alt="凤凰视频" title="凤凰视频" class="Content_Icon"
							src="./files/2797572.png">
							<h2>凤凰视频</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=ifeng.apk" target="_blank">点击下载</a> <span
						class="downloadCountShow">40万下载</span></li>
					<div class="moreinfo hide">
						<h2>凤凰视频</h2>
						<span class="size">大小：9.87MB</span> <span class="shortdesc">凰家视角触动实事热点</span>
						<span class="moreinfo-catename">影音播放</span>
					</div>
					<li><a href="/AppStore/Download?app=xmlyFM.apk"
						target="_blank"> <img alt="喜马拉雅FM" title="喜马拉雅FM"
							class="Content_Icon" src="./files/2853299.png">
							<h2>喜马拉雅FM</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=xmlyFM.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">139万下载</span></li>
					<div class="moreinfo hide">
						<h2>喜马拉雅FM</h2>
						<span class="size">大小：13.24MB</span> <span class="shortdesc">喜马拉雅，手机随身听！</span>
						<span class="moreinfo-catename">图书阅读</span>
					</div>
					<li><a href="/AppStore/Download?app=vipshop.apk"
						target="_blank"> <img alt="唯品会—网上购物•服饰•美妆•亲子•家居•正品•时尚"
							title="唯品会—网上购物•服饰•美妆•亲子•家居•正品•时尚" class="Content_Icon"
							src="./files/2854459.png">
							<h2>唯品会—网上购物•服饰•美妆•亲子•家居•正品•时尚</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=vipshop.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">68万下载</span></li>
					<div class="moreinfo hide">
						<h2>唯品会—网上购物•服饰•美妆•亲子•家居•正品•时尚</h2>
						<span class="size">大小：9.07MB</span> <span class="shortdesc">名牌特卖场，正品1折起</span>
						<span class="moreinfo-catename">网购支付</span>
					</div>
					<li><a href="/AppStore/Download?app=zhongsou.apk"
						target="_blank"> <img alt="中搜搜悦-最个性化新闻客户端"
							title="中搜搜悦-最个性化新闻客户端" class="Content_Icon"
							src="./files/2795934.png">
							<h2>中搜搜悦-最个性化新闻客户端</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=zhongsou.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">13万下载</span></li>
					<div class="moreinfo hide">
						<h2>中搜搜悦-最个性化新闻客户端</h2>
						<span class="size">大小：20.64MB</span> <span class="shortdesc">两性私密,交友约妹猛戳用力点!</span>
						<span class="moreinfo-catename">新闻资讯</span>
					</div>
					<li><a href="/AppStore/Download?app=hongjing4.apk"
						target="_blank"> <img alt="红警4：大国崛起" title="红警4：大国崛起"
							class="Content_Icon" src="./files/2826318.png"> <img
							class="Content_Label" src="./files/hot.png">
							<h2>红警4：大国崛起</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=hongjing4.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">139万下载</span></li>
					<div class="moreinfo hide">
						<h2>红警4：大国崛起</h2>
						<span class="size">大小：47.18MB</span> <span class="shortdesc">你不叫红警，我们还是好朋友</span>
						<span class="moreinfo-catename">手机网游</span>
					</div>
					<li><a href="/AppStore/Download?app=weidian.apk"
						target="_blank"> <img alt="微店买家版" title="微店买家版"
							class="Content_Icon" src="./files/2821475.png">
							<h2>微店买家版</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=weidian.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">1.6万-1.7万下载</span></li>
					<div class="moreinfo hide">
						<h2>微店买家版</h2>
						<span class="size">大小：2.73MB</span> <span class="shortdesc">1000多万商家为你提供各种服务</span>
						<span class="moreinfo-catename">网购支付</span>
					</div>
					<li><a href="/AppStore/Download?app=360browser.apk"
						target="_blank"> <img alt="360浏览器" title="360浏览器"
							class="Content_Icon" src="./files/2854946.png">
							<h2>360浏览器</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=360browser.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">220万下载</span></li>
					<div class="moreinfo hide">
						<h2>360浏览器</h2>
						<span class="size">大小：7.95MB</span> <span class="shortdesc">千万小说免费看，随时随地自由看！</span>
						<span class="moreinfo-catename">浏览器</span>
					</div>
					<li><a href="/AppStore/Download?app=meituan.apk"
						target="_blank"> <img alt="美团-团购美食电影酒店优惠"
							title="美团-团购美食电影酒店优惠" class="Content_Icon"
							src="./files/2852581.png">
							<h2>美团-团购美食电影酒店优惠</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=meituan.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">239万下载</span></li>
					<div class="moreinfo hide">
						<h2>美团-团购美食电影酒店优惠</h2>
						<span class="size">大小：13.14MB</span> <span class="shortdesc">让我们用团购来对抗CPI上涨！</span>
						<span class="moreinfo-catename">网购支付</span>
					</div>
					<li><a href="/AppStore/Download?app=crisisfire.apk"
						target="_blank"> <img alt="全民枪战" title="全民枪战"
							class="Content_Icon" src="./files/2858241.png"> <img
							class="Content_Label" src="./files/hot.png">
							<h2>全民枪战</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=crisisfire.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">131万下载</span></li>
					<div class="moreinfo hide">
						<h2>全民枪战</h2>
						<span class="size">大小：173.27MB</span> <span class="shortdesc">小学生语录：所有游戏都是抄袭CF</span>
						<span class="moreinfo-catename">手机网游</span>
					</div>
					<li><a href="/AppStore/Download?app=wcat.apk" target="_blank">
							<img alt="白猫计划" title="白猫计划" class="Content_Icon"
							src="./files/2838111.png"> <img class="Content_Label"
							src="./files/acti.png">
							<h2>白猫计划</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=wcat.apk" target="_blank">点击下载</a> <span
						class="downloadCountShow">4万-4.1万下载</span></li>
					<div class="moreinfo hide">
						<h2>白猫计划</h2>
						<span class="size">大小：123.66MB</span> <span class="shortdesc">单指操作
							3D RPG体验</span> <span class="moreinfo-catename">手机网游</span>
					</div>
					<li><a href="/AppStore/Download?app=wys.apk" target="_blank">
							<img alt="问医生" title="问医生" class="Content_Icon"
							src="./files/2761950.png">
							<h2>问医生</h2>
					</a> <a class="index-view-detail" href="/AppStore/Download?app=wys.apk"
						target="_blank">点击下载</a> <span class="downloadCountShow">1.9万-2万下载</span></li>
					<div class="moreinfo hide">
						<h2>问医生</h2>
						<span class="size">大小：6.3MB</span> <span class="shortdesc">随时随地问医生</span>
						<span class="moreinfo-catename">便捷生活</span>
					</div>
					<li><a href="/AppStore/Download?app=cateye.apk"
						target="_blank"> <img alt="猫眼电影-9.9元看大片" title="猫眼电影-9.9元看大片"
							class="Content_Icon" src="./files/2834130.png">
							<h2>猫眼电影-9.9元看大片</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=cateye.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">24万下载</span></li>
					<div class="moreinfo hide">
						<h2>猫眼电影-9.9元看大片</h2>
						<span class="size">大小：6.3MB</span> <span class="shortdesc">新用户专享，9.9元看大片</span>
						<span class="moreinfo-catename">便捷生活</span>
					</div>
					<li><a href="/AppStore/Download?app=huochairen.apk"
						target="_blank"> <img alt="火柴人联盟-大圣降临" title="火柴人联盟-大圣降临"
							class="Content_Icon" src="./files/2854491.png"> <img
							class="Content_Label" src="./files/acti.png">
							<h2>火柴人联盟-大圣降临</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=huochairen.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">25万下载</span></li>
					<div class="moreinfo hide">
						<h2>火柴人联盟-大圣降临</h2>
						<span class="size">大小：33.33MB</span> <span class="shortdesc">IOS付费榜第一格斗游戏！</span>
						<span class="moreinfo-catename">动作冒险</span>
					</div>
					<li><a href="/AppStore/Download?app=qmzjh.apk" target="_blank">
							<img alt="全民炸翻天" title="全民炸翻天" class="Content_Icon"
							src="./files/2854498.png">
							<h2>全民炸翻天</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=qmzjh.apk" target="_blank">点击下载</a> <span
						class="downloadCountShow">6.8万-6.9万下载</span></li>
					<div class="moreinfo hide">
						<h2>全民炸翻天</h2>
						<span class="size">大小：9.91MB</span> <span class="shortdesc">冠军之争，问鼎全民炸翻天。</span>
						<span class="moreinfo-catename">棋牌桌游</span>
					</div>
					<li><a href="/AppStore/Download?app=sxdj.apk" target="_blank">
							<img alt="双熊对决" title="双熊对决" class="Content_Icon"
							src="./files/2847423.png">
							<h2>双熊对决</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=sxdj.apk" target="_blank">点击下载</a> <span
						class="downloadCountShow">2万-2.1万下载</span></li>
					<div class="moreinfo hide">
						<h2>双熊对决</h2>
						<span class="size">大小：39.46MB</span> <span class="shortdesc">双人对决，双份快乐。</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=doudizhu.apk"
						target="_blank"> <img alt="欢乐途游斗地主" title="欢乐途游斗地主"
							class="Content_Icon" src="./files/2848360.png"> <img
							class="Content_Label" src="./files/acti.png">
							<h2>欢乐途游斗地主</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=doudizhu.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">385万下载</span></li>
					<div class="moreinfo hide">
						<h2>欢乐途游斗地主</h2>
						<span class="size">大小：18.74MB</span> <span class="shortdesc">激情赛事，斗地主赢豪礼！</span>
						<span class="moreinfo-catename">棋牌桌游</span>
					</div>
					<li><a href="/AppStore/Download?app=shouhuzhe.apk"
						target="_blank"> <img alt="小小守护者 汉化修正版" title="小小守护者 汉化修正版"
							class="Content_Icon" src="./files/2795463.png">
							<h2>小小守护者 汉化修正版</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=shouhuzhe.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">2万-2.1万下载</span></li>
					<div class="moreinfo hide">
						<h2>小小守护者 汉化修正版</h2>
						<span class="size">大小：194MB</span> <span class="shortdesc">小小守卫者也会很强大</span>
						<span class="moreinfo-catename">策略游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=loop.apk" target="_blank">
							<img alt="无限循环 ∞" title="无限循环 ∞" class="Content_Icon"
							src="./files/2746236.png">
							<h2>无限循环 ∞</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=loop.apk" target="_blank">点击下载</a> <span
						class="downloadCountShow">1.5万-1.6万下载</span></li>
					<div class="moreinfo hide">
						<h2>无限循环 ∞</h2>
						<span class="size">大小：2.28MB</span> <span class="shortdesc">你见过比这个更简约的游戏么？</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=buyu.apk" target="_blank">
							<img alt="千炮捕鱼2赢话费" title="千炮捕鱼2赢话费" class="Content_Icon"
							src="./files/2852684.png"> <img class="Content_Label"
							src="./files/hot.png">
							<h2>千炮捕鱼2赢话费</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=buyu.apk" target="_blank">点击下载</a> <span
						class="downloadCountShow">17万下载</span></li>
					<div class="moreinfo hide">
						<h2>千炮捕鱼2赢话费</h2>
						<span class="size">大小：20.8MB</span> <span class="shortdesc">捕鱼变态版，多人对战赢话费！</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=jingsu.apk"
						target="_blank"> <img alt="3D死亡竞速" title="3D死亡竞速"
							class="Content_Icon" src="./files/2758053.png"> <img
							class="Content_Label" src="./files/hot.png">
							<h2>3D死亡竞速</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=jingsu.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">29万下载</span></li>
					<div class="moreinfo hide">
						<h2>3D死亡竞速</h2>
						<span class="size">大小：5.79MB</span> <span class="shortdesc">最刺激的3D赛车游戏！</span>
						<span class="moreinfo-catename">赛车竞速</span>
					</div>
					<li><a href="/AppStore/Download?app=robot.apk" target="_blank">
							<img alt="维修机器人" title="维修机器人" class="Content_Icon"
							src="./files/2755957.png">
							<h2>维修机器人</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=robot.apk" target="_blank">点击下载</a> <span
						class="downloadCountShow">5000-6000下载</span></li>
					<div class="moreinfo hide">
						<h2>维修机器人</h2>
						<span class="size">大小：103MB</span> <span class="shortdesc">机器人虽小五脏俱全</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=popstar.apk"
						target="_blank"> <img alt="PopStar!消灭星星官方正版"
							title="PopStar!消灭星星官方正版" class="Content_Icon"
							src="./files/2858347.png"> <img class="Content_Label"
							src="./files/acti.png">
							<h2>PopStar!消灭星星官方正版</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=popstar.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">92万下载</span></li>
					<div class="moreinfo hide">
						<h2>PopStar!消灭星星官方正版</h2>
						<span class="size">大小：7.9MB</span> <span class="shortdesc">全球超过亿万粉丝经典游戏！</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=sprite.apk"
						target="_blank"> <img alt="跃动精灵" title="跃动精灵"
							class="Content_Icon" src="./files/2814867.png">
							<h2>跃动精灵</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=sprite.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">1.2万-1.3万下载</span></li>
					<div class="moreinfo hide">
						<h2>跃动精灵</h2>
						<span class="size">大小：23.13MB</span> <span class="shortdesc">这是一款灵气侧漏的游戏</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=undersun.apk"
						target="_blank"> <img alt="日光之下" title="日光之下"
							class="Content_Icon" src="./files/2704989.png">
							<h2>日光之下</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=undersun.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">9000-1万下载</span></li>
					<div class="moreinfo hide">
						<h2>日光之下</h2>
						<span class="size">大小：26.78MB</span> <span class="shortdesc">光之下是谁？</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=tinyroom2.apk"
						target="_blank"> <img alt="小房间2" title="小房间2"
							class="Content_Icon" src="./files/2853623.png">
							<h2>小房间2</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=tinyroom2.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">1.8万-1.9万下载</span></li>
					<div class="moreinfo hide">
						<h2>小房间2</h2>
						<span class="size">大小：4.91MB</span> <span class="shortdesc">怎么逃出房间确实是个问题</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=DarkEcho.apk"
						target="_blank"> <img alt="回声探路" title="回声探路"
							class="Content_Icon" src="./files/2754104.png">
							<h2>回声探路</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=DarkEcho.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">5万-5.1万下载</span></li>
					<div class="moreinfo hide">
						<h2>回声探路</h2>
						<span class="size">大小：38.86MB</span> <span class="shortdesc">像蝙蝠一样用回声探寻迷宫道路</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<li><a href="/AppStore/Download?app=randomhero3.apk"
						target="_blank"> <img alt="百变英雄3 金币修改版" title="百变英雄3 金币修改版"
							class="Content_Icon" src="./files/2757365.png">
							<h2>百变英雄3 金币修改版</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=randomhero3.apk" target="_blank">点击下载</a>
						<span class="downloadCountShow">2.4万-2.5万下载</span></li>
					<div class="moreinfo hide">
						<h2>百变英雄3 金币修改版</h2>
						<span class="size">大小：32.96MB</span> <span class="shortdesc">可别小瞧像素小人呦</span>
						<span class="moreinfo-catename">动作冒险</span>
					</div>
					<li><a href="/AppStore/Download?app=wwsy2.apk" target="_blank">
							<img alt="喂我石油2 三星商店版" title="喂我石油2 三星商店版" class="Content_Icon"
							src="./files/2690574.png">
							<h2>喂我石油2 三星商店版</h2>
					</a> <a class="index-view-detail"
						href="/AppStore/Download?app=wwsy2.apk" target="_blank">点击下载</a> <span
						class="downloadCountShow">3.8万-3.9万下载</span></li>
					<div class="moreinfo hide">
						<h2>喂我石油2 三星商店版</h2>
						<span class="size">大小：55.79MB</span> <span class="shortdesc">超现实童话唯美风物理机关谜题</span>
						<span class="moreinfo-catename">益智游戏</span>
					</div>
					<div class="clear"></div>
				</ul>
			</div>
			<div id="right" style="height: auto;">

				<div class="top">
					<div class="soft-top top-active">
						<span><a href="javascript:;">软件排行榜</a></span>
					</div>
					<div class="game-top">
						<span><a href="javascript:;">游戏排行榜</a></span>
					</div>
					<ol class="soft-top-list">
						<c:forEach items="${softTops}" var="app">

							<li><span class="topnum">${app.id }</span><a
								href="/AppStore/Download?app=${app.url }" target="_blank"><img
									src="./files/${app.pic }" width="40" height="40"
									title="${app.name }" alt="${app.name }"></a><span
								class="top-app-name" title="${app.name }"><a
									href="/AppStore/Download?app=${app.url }" target="_blank">${app.name }</a></span></li>
						</c:forEach>
					</ol>
					<ol class="game-top-list hide">

						<li><span class="topnum">1</span><a
							href="#"
							target="_blank"><img src="./files/2853973.png" width="40"
								height="40" title="欢乐斗地主(完整版)" alt="欢乐斗地主(完整版)"></a><span
							class="top-app-name" title="欢乐斗地主(完整版)"><a
								href="#"
								target="_blank">欢乐斗地主(完整版)</a></span></li>

						<li><span class="topnum">2</span><a
							href="#"
							target="_blank"><img src="./files/2856386.png" width="40"
								height="40" title="节奏大师" alt="节奏大师"></a><span
							class="top-app-name" title="节奏大师"><a
								href="#"
								target="_blank">节奏大师</a></span></li>

						<li><span class="topnum">3</span><a
							href="#"
							target="_blank"><img src="./files/2858347.png" width="40"
								height="40" title="PopStar!消灭星星官方正版" alt="PopStar!消灭星星官方正版"></a><span
							class="top-app-name" title="PopStar!消灭星星官方正版"><a
								href="#"
								target="_blank">PopStar!消灭星星官方正版</a></span></li>

						<li><span class="topnum">4</span><a
							href="#"
							target="_blank"><img src="./files/2844600.png" width="40"
								height="40" title="地铁跑酷" alt="地铁跑酷"></a><span
							class="top-app-name" title="地铁跑酷"><a
								href="#"
								target="_blank">地铁跑酷</a></span></li>

						<li><span class="topnum">5</span><a
							href="#"
							target="_blank"><img src="./files/2848624.png" width="40"
								height="40" title="神庙逃亡2" alt="神庙逃亡2"></a><span
							class="top-app-name" title="神庙逃亡2"><a
								href="#"
								target="_blank">神庙逃亡2</a></span></li>

						<li><span class="topnum">6</span><a
							href="#"
							target="_blank"><img src="./files/2854633.png" width="40"
								height="40" title="天天酷跑" alt="天天酷跑"></a><span
							class="top-app-name" title="天天酷跑"><a
								href="#"
								target="_blank">天天酷跑</a></span></li>

						<li><span class="topnum">7</span><a
							href="#"
							target="_blank"><img src="./files/2854050.png" width="40"
								height="40" title="天天飞车" alt="天天飞车"></a><span
							class="top-app-name" title="天天飞车"><a
								href="#"
								target="_blank">天天飞车</a></span></li>

						<li><span class="topnum">8</span><a
							href="#"
							target="_blank"><img src="./files/900610.png" width="40"
								height="40" title="侠盗猎车手：罪恶都市汉化版" alt="侠盗猎车手：罪恶都市汉化版"></a><span
							class="top-app-name" title="侠盗猎车手：罪恶都市汉化版"><a
								href="#"
								target="_blank">侠盗猎车手：罪恶都市汉化版</a></span></li>

						<li><span class="topnum">9</span><a
							href="#"
							target="_blank"><img src="./files/1511311.png" width="40"
								height="40" title="笨鸟先飞" alt="笨鸟先飞"></a><span
							class="top-app-name" title="笨鸟先飞"><a
								href="#"
								target="_blank">笨鸟先飞</a></span></li>

						<li><span class="topnum" style="margin-left: -5px">10</span><a
							href="#"
							target="_blank"><img src="./files/2842364.png" width="40"
								height="40" title="熊出没之熊大快跑" alt="熊出没之熊大快跑"></a><span
							class="top-app-name" title="熊出没之熊大快跑"><a
								href="#"
								target="_blank">熊出没之熊大快跑</a></span></li>
					</ol>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="fixed" style="left: 1194.5px;">
		<ul>
			<li id="to-top"><a href="javascript:;">&nbsp;</a></li>
		</ul>
	</div>
	<script type="text/javascript" src="./files/mini_launch.js"></script>
	<!-- 代码统计 -->
	<div style="display: none;">
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



</script>
	</div>



	<script type="text/javascript">
    $(function(){
        $("#slide").imageSlide();
    });
</script>
</body>
</html>