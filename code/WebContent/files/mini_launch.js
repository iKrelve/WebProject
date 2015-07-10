/*!Appchina AgHelper v1.0 API */
function mini_download(url,icon,name,pkgname,version,ft){
		if(url.indexOf('http')!=0){
			var pageurl = location.host;
			pageurl = pageurl.toString();
			url = 'http://'+ pageurl + url;					
		}	
		$.ajax({
			type:"get",
			url:"http://127.0.0.1:45037/api/task/add",
			data:'icon='+escape(icon)+"&url="+escape(url)+"&pn="+pkgname+"&vn="+version+'&ft='+ft+"&name="+encodeURIComponent(name),
			dataType:"jsonp",
			jsonp: 'jsonpcallback',
			timeout:2000,
			success:function(json){
				if(json.result==0){
					alert(json.msg);
				}else{
					var id=json.id;
				}
			},
			error:function(){
			}
		});	
}

/*build pop content*/
function buildTip(step,name,icon,channel){
	if(step==1){
		var temp = '<div id="mini_step1"><div class="step1_head cf"><div class="fl icon"><img src="'+icon+'" class=""/></div><span class="fl title_ins">一键安装“<span class="app-name">'+name+'</span>”到您的手机，需要“应用汇PC版”</span><span class="fr close"></span></div><div class="step1_body cf"><div class="step1_body_left fl"><p class="no_install">我的电脑还<span>没安装</span></p><a href="http://mini.appchina.com/mini_setup.exe" class="no_install_img"></a></div>';
		temp += '<div class="step1_body_right fl"><p class="had_install">我的电脑<span>已安装</span></p><a href="#" class="had_install_img"></a></div></div>';
		temp += '<div class="step1_foot cf"><div class="fl left"><a href="http://mini.appchina.com" class="what_mini">什么是应用汇PC版？</a><span class="gray">过程傻瓜：</span></div><div class="fl flow_box"><img src="'+icon +'" />	<img class="line1" src="http://static.yingyonghui.com/aplus/public/images/pop_line1.png" /><p class="app_name cutoff">'+name+'</p></div><div class="fl flow_box" style="position:relative;"><img src="http://static.yingyonghui.com/aplus/public/images/yyh_logo.png" style="width:;"/><img class="line1" src="http://static.yingyonghui.com/aplus/public/images/pop_line1.png" /><p class="app_name cutoff" style="position:absolute;left:-25px;width:130px;">(支持所有安卓软件)</p></div><div class="fl flow_box"><img src="http://static.yingyonghui.com/aplus/public/images/anz.png" /><p class="app_name">您的安卓设备</p></div></div></div>';
		return temp;
	}else if(step==2){
		var temp = '<div id="mini_step2"><div class="step2_head cf"><div class="fl tit fw">正在启动“应用汇PC版”····</div><div class="fr close"></div></div>';
		temp +='<div class="step2_body"><p class="">如果浏览器弹出“<span class="orange">外部协议请求</span>”窗口，这是系统正常安全的流程，</p><p class="mb30">请您放心点击“<span class="green">允许</span>”或“<span class="green">启动</span>”按钮</p><p>问题帮助：</p><div class="cf"><ul class="question fl"><li id="issue1">1.等了好久没启动！？是不是出错啦？</li><li id="issue2">2.刚才一不小心点错安卓啦！悲剧···</li><li id="issue3">3.记不清电脑里是否安装应用汇PC版了···哎老了···</li></ul><ul class="answer fl"><li class="one" style="display:none"><a href="#" class="relaunch_mini"></a></li><li class="one" style="display:none"><a href="#" class="relaunch_mini"></a></li><li class="two" style="display:none"><a href="http://mini.appchina.com/mini_setup.exe"></a></li></ul></div></div>';
		temp +='<div class="step2_foot cf"><img src="http://static.yingyonghui.com/aplus/public/images/yyh_logo.png" class="fl logo"/><p class="gray fl">应用汇帮您一键安装</p><div class="fl"><img src="'+icon+'" /><div class="step2_name cutoff">'+name+'</div></div><p class="gray fl">到手机，简单又方便！</p><img src="http://static.yingyonghui.com/aplus/public/images/lianjie.png" alt="" style="width:161px;height:63px"/></div></div>';
		return temp;
	}
	else if(step==3){
		var temp = '<div id="mini_step3"><div class="step3_head cf"><div class="fl tit fw">“应用汇PC版”启动成功····</div><div class="fr close"></div></div>'
		temp += '<div class="step3_body"><p class="mb75">开始帮您安装“'+name+'”到手机上</p><p class="mb75">请在“应用汇PC版/安装任务”界面下查看下载安装过程：<img src="http://static.yingyonghui.com/aplus/public/images/task_pic.png" style="vertical-align: middle;"/></p></div>';
		temp += '<div class="step3_foot cf"><img src="http://static.yingyonghui.com/aplus/public/images/yyh_logo.png" class="fl logo"/><p class="gray fl">应用汇帮您一键安装</p><div class="fl"><img src="'+icon+'" /><div class="step2_name cutoff">'+name+'</div></div><p class="gray fl">到手机，简单又方便！</p><img src="http://static.yingyonghui.com/aplus/public/images/lianjie.png" alt="" style="width:161px;height:63px"/></div></div>';
		return temp;
	}
	else if(step==4){
		var temp = '<div id="mini_step4"><div class="step4_head cf"><div class="fl tit fw">正在下载“应用汇PC版”····</div><div class="fr close"></div></div>';
		temp += '<div class="step4_body"><p class="mb75">下载完成后请运行“mini_setup_'+channel+'.exe”进行文件安装，过程中请不要关闭此页面</p><div class="cf"><div class="fl"><p class="">问题帮助：</p><p class="question">各种下载不正常或者出现问题了···</p></div><a href="http://mini.appchina.com/mini_setup.exe" class="fl redownload" style="display:none"></a></div></div>';
		temp += '<div class="step4_foot cf"><img src="http://static.yingyonghui.com/aplus/public/images/yyh_logo.png" class="fl logo"/><p class="gray fl">应用汇帮您一键安装</p><div class="fl"><img src="'+icon+'" /><div class="cutoff step2_name cutoff">'+name+'</div></div><p class="gray fl">到手机，简单又方便！</p><img src="http://static.yingyonghui.com/aplus/public/images/lianjie.png" alt="" style="width:161px;height:63px"/></div></div>';
		return temp;
	}
}

$(".step1_head .close,.step2_head .close,.step3_head .close,.step4_head .close").live("click",function(){
	$("#zhushou-content").remove();
	$(".zhushou-mask").remove();
	$("#mini_step1,#mini_step2,#mini_step3,#mini_step4").remove();
	
})
$(".step4_body .question").live("click",function() { 
	$(".step4_body .question").addClass("gray");
	$(".redownload").show();
	});


	$(".question li").live("click",function() { 
		$(this).addClass("gray").siblings().removeClass("gray");	
		var index=$(this).index();
	    $(".answer li:eq(" + index + ")").show().siblings().hide();
	});



function showDialog(content) {
    var objW = $(window); 
    var objC = $("#"+content+""); 
    var brsW = objW.width();
    var brsH = objW.height();
    var sclL = objW.scrollLeft();
    var sclT = objW.scrollTop();
    var curW = objC.width();
    var curH = objC.height();
    var left = sclL + (brsW - curW) / 2;
    var top = sclT + (brsH - curH) / 2;
  //  objC.css({ "left": left, "top": top });
}

/*one click to install*/
function zhushou(targ){
	var vn = targ.getAttribute('meta-versionname');
	var url = targ.getAttribute('meta-url');
	var name = targ.getAttribute('meta-name');
	var icon = targ.getAttribute('meta-icon');
	var pn = targ.getAttribute('meta-packagename');
	var ft = targ.getAttribute('meta-filetype');
	var ch = targ.getAttribute('meta-mini-channel');
	if(ft==null)
		ft = 'apk';
	//first ping
	$.ajax({type:"get",url:"http://127.0.0.1:45037/api/ping",dataType:"jsonp",jsonp:'jsonpcallback',timeout:500,
		success:function(json){
			mini_download(url,icon,name,pn,vn,ft);
			return;
		},
		error:function(){
			//client not launch check cookie
			var zhushouLink ='appchina://icon='+escape(icon)+'&url='+escape(url)+'&pn='+pn+'&vn='+vn+'&ft='+ft+'&name='+name;
			var zhushou_pop = '<div class="zhushou-mask"><div id="zhushou-content">';
			var installed = parseInt($.cookie('installed'));
			if(installed){
				//pop step 2
				var step2_content = buildTip(2,name,icon,ch);
				zhushou_pop += step2_content;
				zhushou_pop += '</div></div>';
				$(zhushou_pop).appendTo('body');
				showDialog('zhushou-content');
				
				var time=setInterval(function(){
						$.ajax({type:"get",url:"http://127.0.0.1:45037/api/ping",dataType:"jsonp",jsonp:'jsonpcallback',timeout:500,
						success:function(json){
							
							$("#mini_step2").remove();
							var step3_content = buildTip(3,name,icon,ch);
							$("#zhushou-content").html(step3_content);
							showDialog('zhushou-content');
							$('.relaunch_mini').attr('href',zhushouLink);
							// $('<iframe src="' + zhushouLink + '" width="0" height="0" frameborder="0"></iframe>').appendTo($('#zhushou-content'));
							clearInterval(time);
							return;
						},
						error:function(){
							// if(time)
						}
					})
					},1500)
				$('.relaunch_mini').attr('href',zhushouLink);
				$('<iframe src="' + zhushouLink + '" width="0" height="0" frameborder="0"></iframe>').appendTo($('#zhushou-content'));

			}else{
				//pop step 1
				var step1_content = buildTip(1,name,icon,ch);
				zhushou_pop += step1_content;
				zhushou_pop += '</div></div>';
				$(zhushou_pop).appendTo('body');
				showDialog('zhushou-content');	
				$('.had_install_img').live('click',function(){
					//set cookie and pop step2
					$.cookie('installed', 1,{expires:3,path:'/'});
					$("#mini_step1").remove();
					var step2_content = buildTip(2,name,icon,ch);
					$("#zhushou-content").html(step2_content).fadeIn("fast");

					var time=setInterval(function(){
						$.ajax({type:"get",url:"http://127.0.0.1:45037/api/ping",dataType:"jsonp",jsonp:'jsonpcallback',timeout:500,
						success:function(json){
							
							$("#mini_step2").remove();
							var step3_content = buildTip(3,name,icon,ch);
							$("#zhushou-content").html(step3_content);
							showDialog('zhushou-content');
							$('.relaunch_mini').attr('href',zhushouLink);
							// $('<iframe src="' + zhushouLink + '" width="0" height="0" frameborder="0"></iframe>').appendTo($('#zhushou-content'));
							clearInterval(time);
							return;
						},
						error:function(){}
					})
					},1000)
					$('.relaunch_mini').attr('href',zhushouLink);
					$('<iframe src="' + zhushouLink + '" width="0" height="0" frameborder="0"></iframe>').appendTo($('#zhushou-content'));
				});
				
				$(".no_install_img").live("click",function(){					
					$("#mini_step1").remove();
					var step4_content = buildTip(4,name,icon,ch);
					$("#zhushou-content").html(step4_content).fadeIn("fast");
				})

			}
		}
	});
}
