function fixed_position() {
	var fixed_left =  $('.main').offset().left + $('.main').width() +20 ;
	if($('html').outerWidth() - fixed_left < 60) {
		$('div.fixed').css('left', ($('html').outerWidth() - 60 ) +'px');		
	

	} else {
		$('div.fixed').css('left',fixed_left + 'px');
	}	
}
function supportCanvas() {
    return !!document.createElement("canvas").getContext;
}
function indexApaper() {
    $(this).parent().parent().hide().siblings('div:hidden').show();
}
function search()
{
    var val = $('#keyword').val();//.replace(/\s/g, '');
    if (val != '')
    {
        location.href = '/sou/'+val;
    }
    return false;
}
function logout() {
	$.ajax({
		type : "get",
		url : "/account/logout",
		dataType : "json",
		success : function(data) {
			if (data.result) {
				location.reload();
			}
		}
	})
}
function detectOS() {
    var sUserAgent = navigator.userAgent;
    var isWin = (navigator.platform == "Win32") || (navigator.platform == "Windows");
    var isMac = (navigator.platform == "Mac68K") || (navigator.platform == "MacPPC") || (navigator.platform == "Macintosh") || (navigator.platform == "MacIntel");
    if (isMac) 
        return "Mac";
    var isUnix = (navigator.platform == "X11") && !isWin && !isMac;
    if (isUnix) 
        return "Unix";
    var isLinux = (String(navigator.platform).indexOf("Linux") > -1);
    if (isLinux) 
        return "Linux";
    if (isWin) {
        var isWin2K = sUserAgent.indexOf("Windows NT 5.0") > -1 || sUserAgent.indexOf("Windows 2000") > -1;
        if (isWin2K) 
            return "Win2000";
        var isWinXP = sUserAgent.indexOf("Windows NT 5.1") > -1 || sUserAgent.indexOf("Windows XP") > -1;
        if (isWinXP)
            return "WinXP";
        var isWin2003 = sUserAgent.indexOf("Windows NT 5.2") > -1 || sUserAgent.indexOf("Windows 2003") > -1;
        if (isWin2003) 
            return "Win2003";
        var isWin2003 = sUserAgent.indexOf("Windows NT 6.0") > -1 || sUserAgent.indexOf("Windows Vista") > -1;
        if (isWin2003)
            return "WinVista"; 
        var isWin2003 = sUserAgent.indexOf("Windows NT 6.1") > -1 || sUserAgent.indexOf("Windows 7") > -1;
        if (isWin2003) 
            return "Win7";
    } 
    return "other"; 
}

$(window).resize(function() {
  	fixed_position();
});
$(window).load(function(){
    var app_screenshot_list_width = 0;
    $('.app-screenshot-list').find('img').each(function(){
        app_screenshot_list_width += $(this).outerWidth();
        app_screenshot_list_width += 5;    
    });
    if(app_screenshot_list_width < 650) {
        $('.slider').hide();
    }
    $('.app-screenshot-list').css('width',app_screenshot_list_width+2);  
});
$(document).ready(function() {
    if(detectOS()=='Mac'||detectOS()=='Linux'){
        $(".app-setup").hide();
        $(".app-download").show();
    }
    $('.download_app').each(function(){
        var appid = $(this).attr('meta-appid');
        var packageName =$(this).attr('meta-packagename');
        var page = $(this).attr('meta-page');
        var closedown = $(this).attr('data-closedown');
        if(appid && appid != 9999 ) {
            var downloadUrl = 'http://www.appchina.com/market/r/'+appid+'/'+packageName+'?channel=aplus.direct&uid='+sessionId+'&page='+page;
            $(this).attr('href',downloadUrl);
        }
    });
	fixed_position();
	var top = $('.top').children('div');
	top.mouseover(function() {
		if(!$(this).hasClass('top-active')) {
			$(this).toggleClass('top-active')
				   .siblings('div').toggleClass('top-active')
				   .parent().children('ol:visible').hide()
				   .siblings('ol').show();
		}
	});

	$('.so').mouseover(function(){
		if($(this).attr('id') != 'checked') {
			$(this).attr('id','checked')
				   .siblings('div').attr('id','');
			$('.game-app-name').children('ul').toggleClass('hide');
		}
	});
		
	$('#to-top').click(function() {		
		var top = document.documentElement.scrollTop || document.body.scrollTop; 	
		if( top > 0 ) {
			$('html,body').animate({scrollTop: "0px"}, 400);
		}
	});
    
    $('.main-info h2.part-title').click(function(){

		$(this).next('p').slideToggle('fast');
		$(this).next('div').slideToggle('fast');
		$(this).next('h3').slideToggle('fast').next('p').slideToggle('fast');
		if ( $(this).next().is("ul") ) {
			$(this).next().slideToggle('fast');
		};
		if ($(this).hasClass('r'))
		{
		    $(this).removeClass('r');
		}
		else
		{
		    $(this).addClass('r');
		}
	});

//	$('.interrelate-app ul li:odd').css('margin-right','0px');

	$('#slide-left,#slide-right').mouseenter(function(){        
		$(this).addClass('active');
	}).mouseleave(function(){
		$(this).removeClass('active');
	});

	$('#slide-left').click(function(){
		var first_li_position = $('.app-screenshot-list li').first().offset().left;
		var ul_position = $('.app-screenshot-list').offset().left;
                var old_left = parseInt($('.app-screenshot-list li').last().css('left'));
                
		if( -(first_li_position - ul_position) >= $('.app-screenshot-list li').last().outerWidth() ) {
                    if(  !isNaN( old_left )) {
                        $('.app-screenshot-list li').animate({left:old_left+$('.app-screenshot-list li').last().outerWidth()},100);                        
                    }else {
                        $('.app-screenshot-list li').animate({left:$('.app-screenshot-list li').last().outerWidth()},100);                        
                    }
		} else {                    
                    if(  !isNaN( old_left )) {
                        $('.app-screenshot-list li').animate({left:old_left-(first_li_position - ul_position)},100);                        
                    }else {
                        $('.app-screenshot-list li').animate({left:-(first_li_position - ul_position)},100);                        
                    }
                }
		
	});

	$('#slide-right').click(function(){
        var first_li_position = $('.app-screenshot-list li').first().offset().left;
		var ul_position = $('.app-screenshot-list').offset().left;
        var left = $('.app-screenshot-list li').last().offset().left + $('.app-screenshot-list li').last().outerWidth() - ( $('.screenshot').offset().left + $('.screenshot').outerWidth() );
        var old_left = parseInt($('.app-screenshot-list li').last().css('left'));      
        if(left >= $('.app-screenshot-list li').last().outerWidth() ) {
            if(  !isNaN( old_left ) && (old_left != 0)) {
                $('.app-screenshot-list li').animate( { left:old_left-$('.app-screenshot-list li').last().outerWidth()},100 );                        
            } else {
                $('.app-screenshot-list li').animate( { left:-$('.app-screenshot-list li').last().outerWidth()},100 );                        
            }
		} else {
            if( !isNaN( old_left ) && (old_left != 0)) {
                $('.app-screenshot-list li').animate({left:(old_left-left)},100);                        
            } else {                        
                $('.app-screenshot-list li').animate({left:(-left)},100);                         
            }
        }
	});

	$('.recommend-game h1').click(function() {
		if(!$(this).hasClass('checked')) {
			$(this).toggleClass('checked')
				   .siblings('h1').toggleClass('checked')
				   .parent().children('ul:visible').hide()
				   .siblings('ul').show();
		}
	});

	var flag = 0;
	$('#soft,#game,#top').mouseenter(function(){
		flag = 1;
		$('.headnavimenu').children('ul').hide();
		$('.headnavi').show().siblings('.headnavimenu').show();        
		$('#'+$(this).attr('id')).show();
        var height = $('.headnavimenu').height();        
        $('.headnavi').outerHeight(height);
	});

	$('.headnavi').mouseover(function(){
		flag = 1;
	});
	$('.headnavimenu').mouseover(function(){
		flag = 1;
	});
	$('.headnavi').mouseleave(function(){
		flag = 0;	
		$('.headnavi').hide();
		$('.headnavimenu').hide();
		$('.headnavimenu').children('ul').hide();
	});
    $('.headnavimenu').mouseleave(function(){
		flag = 0;	
		$('.headnavi').hide();
		$('.headnavimenu').hide();
		$('.headnavimenu').children('ul').hide();
	});


	$('#soft,#game,#top').mouseleave(function(){
		flag = 0;
		setTimeout(function(){			 
			if(flag === 0) {
				$('.headnavi').hide();
				$('.headnavimenu').hide();
				$('.headnavimenu').children('ul').hide();
			}
		},20);
	});
        
    $('.index-hot-app-list li').mouseenter(function(){

        $('ul.index-hot-app-list').find('img').removeAttr('style');
        $('ul.index-hot-app-list').find('a').removeAttr('style');
        $('ul.index-hot-app-list').find('h2').removeAttr('style');
        $('ul.index-hot-app-list').find('span').removeAttr('style');
            
                    
        $(this).siblings('div').removeClass('index-app-more-active');
        $(this).siblings('li').removeAttr('id');
        active_object = $(this);
        var this_object = $(this);            
        var nextdiv = $(this).next('div');
        this_object.attr('id','index-app-active');
        this_object.find('img').css('margin-top','10px');//.css('margin-left','-1px');
        this_object.find('img.Content_Icon').css('margin-left','-3px');//.css('margin-left','-1px');
        //this_object.find('a.index-view-detail').css('left', '-1px');
        this_object.find('h2').css('left','-1px');
        this_object.find('span').css('margin-left','-3px');
        this_object.find('span.downloadCountShow').hide();
        this_object.find('a.index-view-detail').css('display','block');
        nextdiv.addClass('index-app-more-active')
               .css('left',this_object.offset().left).css('top',this_object.offset().top);
    });

    $('.index-hot-app-list li').mouseleave(function(){
        a = $(this);
        a.find('img').removeAttr('style');
        a.find('a').removeAttr('style');
        a.find('h2').removeAttr('style');
        a.find('span').removeAttr('style');
        a.removeAttr('id').next('div').removeClass('index-app-more-active');

    });
        
    $('.strategy span.gameclassify a').click(function(){
        if(!$(this).hasClass('checked')) {
            var catid = $(this).attr('catid');
            $(this).addClass('checked')
                   .siblings('a').removeClass('checked');
            $('ul.strategy').hide().each(function(){
                if($(this).attr('catid') === catid) {
                    $(this).show();
                }
            });
            $('a.strategy-img').hide().each(function(){
                if($(this).attr('catid') === catid) {
                    $(this).show();
                }
            });
                
        }
    });
    
    $('#checkPermissions').toggle(
            function(){
                $('.permissionsDetail').slideDown('fast');
            },
            function(){
                $('.permissionsDetail').slideUp('fast');
            }
    );
        
    $('ol li').mouseenter(function(){
        $(this).css('background-color','#53bf1d').css('color','#fff').find('a').css('color','#fff');
    }).mouseleave(function(){
        $(this).css('background-color','#fff').css('color','#666').find('a').css('color','#666');
    });
  /*  var temp;
    $('div.navi ul li a').mouseenter(function(){
            var t = $(this);
            $(this).parent('li').siblings('li').each(function(){
                if($(this).css('background-color') == 'rgb(83, 191, 29)'){
                    temp = $(this);
                    if(temp == null) {
                        temp = t;
                    } else {
                        if(temp != t) {
                            $(this).css('background-color','#fff').find('a').css('color','#000');
                            t.css('color','#fff').parent('li').css('background-color','#53bf1d');
                        } 
                    }
                }
            });
         
    }).mouseleave(function(){
        var t = $(this);
            if(t != temp && temp != null) {
                $(this).css('color','#000').parent('li').css('background-color','#FFF');
                temp.css('background-color','#53bf1d').find('a').css('color','#FFF');
            }
    });*/
    
    
    $('div.game-app-name ul li a').mouseenter(function(){
        $(this).css('color','#fff');
    }).mouseleave(function(){
        $(this).css('color',$(this).attr('color'));
    });
        
    $('.up').click(indexApaper);
    $('.down').click(indexApaper);
    
    $('.tag-list-index-list li').mouseenter(function() {
        //alert($(this).attr('class'));
    	if(!$(this).hasClass('tag-list-index-list-active')) {
    		$(this).addClass('tag-list-index-list-active')
                    .siblings('li')
                    .removeClass('tag-list-index-list-active');
            $('.tag-list-tag[data-index='+$(this).attr('data-index')+']').show()
                    .siblings('ul.tag-list-tag').hide();
    	}
    });
});
