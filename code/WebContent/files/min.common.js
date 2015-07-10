$(function(){var a=32;$(".index-app-list").each(function(){a-=1;$(this).css({"z-index":a})});$(".app_section").each(function(){var b=$(this);b.hoverDelay({outDuring:0,hoverDuring:140,hoverEvent:function(){b.addClass("hover");b.children(".download_app,.detail_app").fadeIn(260)},outEvent:function(){b.removeClass("hover")}})});$(".rank_list li").hover(function(){$(this).addClass("hover").siblings().removeClass("hover")});$(".star-on").each(function(){var b=$(this).siblings("input[type='hidden']").val();var d=(b/5)*100;var c=d+"%";$(this).css({width:c})});$(".bytime").click(function(){$(".bytime").addClass("active");$(".byrate, .bydown").removeClass("active");$("#bytime").show();$("#byrate,#bydown").hide()});$(".byrate").click(function(){$(".byrate").addClass("active");$(".bytime, .bydown").removeClass("active");$("#byrate").show();$("#bytime,#bydown").hide()});$(".bydown").click(function(){$(".bydown").addClass("active");$(".bytime, .byrate").removeClass("active");$("#bydown").show();$("#bytime,#byrate").hide()})});$(".sub-nav").hover(function(){$(this).children(".sub_layer").show()},function(){$(this).children(".sub_layer").hide()});$(function(){function a(h){var j=$(window);var g=$("#"+h+"");var f=j.width();var b=j.height();var i=j.scrollLeft();var e=j.scrollTop();var c=g.width();var l=g.height();var d=i+(f-c)/2;var k=e+(b-l)/2;g.css({left:d,top:k})}a("report_app");$("#report_app .close").click(function(){$(".report-wrap").hide()});$(".app-report").click(function(){$(".report-wrap").show()});$("#report_app .body input").each(function() {
					$(this).click(function() {
						if (this.checked) {
							txt=$(this).val();
							$(this).parent().siblings().children(".reportype").attr("disabled", true);
							$(".app-submit").attr("href", "javascript:;");
							$(".app-submit").click(function() {
								var app_url=$("#app_url").val();
								var app_name=$("#app_name").val();
								var md5=$("#md5").val();
								var ver_code=$("#ver_code").val();
								var package_type=$("#package_type").val();
								var app_channel=$("#app_channel").val();
								var orig=$("#orig").val();
								var clientip=$("#clientip").val();
								var descr=txt;
								var appchannel=0;
								if(app_channel==301 || app_channel==302 || app_channel==304){
									appchannel=1;
								}
								else if(app_channel==314 || app_channel==315){
									appchannel=2;
								}
								else if(app_channel==307 || app_channel==308){
									appchannel=3;
								}
								else if(app_channel==306){
									appchannel=4;
								}
								else if(app_channel==311 || app_channel==312){
									appchannel=5;
								}
								else if(app_channel==305 || app_channel==309 || app_channel==310 || app_channel==303){
									appchannel=6;
								}
								else if(app_channel==313){
									appchannel=7;
								}
								else if(app_channel > 400){
									appchannel=8;
								}
								$.ajax({			
									type:"post",
									url:"/ajax/post_info",
									async: true,
									dataType: "json",
									data:{
										app_url:app_url,
										app_name:app_name,
										md5:md5,
										ver_code:ver_code,
										package_type:package_type,
										app_channel:appchannel,
										orig:orig,
										clientip:clientip,
										descr:descr
									},
								   beforeSend: function(){
						            	clickable = false;
						            },
						         	complete: function(){
						                clickable = true;
						            },
						            error:function(){
						            	//console.log("error");
						            },
							        success:function(data){
							        	if(data.result == 0){
							        		//console.log("ok!");
							        	}
							        }
							        })
								$(".report-app-result").show();
								$(".report-wrap").fadeOut()
							})
						} else {
							$(this).parent().siblings().children(".reportype").attr("disabled", false);
							$(".app-submit").removeAttr("href")
						}
					})
				});$(".app-submit").click(function(){$(".report-app-result").show();$(".report-app-result").fadeOut("slow");$(".report-wrap").fadeOut(900)})});