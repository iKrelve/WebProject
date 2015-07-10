var quit = '<a id="logout" onclick="logout()">退出</a>'

function is_login() {
	$.getJSON("/account/is_login?t=" + (new Date()).getTime(), function(data) {
		if (!data.result) {
			return false;
		}
		$('.login_set').html(data.account.nick_name + ' |' + quit);
	});
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

$(function() {
	is_login();

	$('#remember_pwd_switch').toggle(function() {
		$(this).removeClass('hover');
		$('#remember_pwd').val(false);
	}, function() {
		$(this).addClass('hover');
		$('#remember_pwd').val(true);
	});

	$('#login_submit').click(function() {
		var login = $.trim($("#user_login #login").val());
		var password = $.trim($("#user_login #password").val());
		if (login == '' || password == '') {
			$('#user_login .tip').text('账号或密码不能为空');
			return false;
		}
		$('#login_form').submit();
	});

	$('.login_close').click(function() {
		$('.tip').removeClass().addClass('tip').text('');
		$('#user_login').hide();
		$('#fancybox-overlay').hide()
	})

	$('#login_pop2,.register-pop').click(function() {
		$('#user_login').fadeIn();
		$('#fancybox-overlay').show()
	})
});
