var login_flag = false;
var nickname_flag = false;
var password_flag = false;
var repassword_flag = false;
var captcha_flag = false;
var captchapic_flag = false;
var login_changed = true;
var nickname_changed = true;
var InterValObj;
// timer变量，控制时间
var count = 60;
var curCount;
var code = "";
var codeLength = 6;

function GetByteLength(val) {
	var l = val.length;
	var i = 0;
	var c = 0;
	var actLength = l;
	while (i < l) {
		c = val.charCodeAt(i);
		if (c > 255)
			actLength++;
		i++;
	}
	return actLength;
}
function validate_nickname() {
	var nickname = $('#nickname');
	var nickname_tip = $(nickname).siblings('.tip');
	val = $.trim($(nickname).val());
	if (val == "") {
		$(nickname_tip).removeClass().addClass('tip error').text('昵称不能为空');
		nickname_flag = false;
	} else {
		var inputLength = GetByteLength(val);
		if (inputLength > 14) {
			$(nickname_tip).removeClass().addClass('tip error').text(
					'昵称不超过7个汉字或14个英文');
			nickname_flag = false;
		} else {
			if (!nickname_changed) {
				return;
			}
			nickname_changed = false;
			// check if mobile has been registered
			$.getJSON('/account/validation?nick_name=' + encodeURI(val),
					function(data) {
						nickname_flag = (data.status == 4004);
						if (nickname_flag) {
							$(nickname_tip).removeClass().addClass(
									'tip success').text(' ok! ');
						} else {
							$(nickname_tip).removeClass().addClass('tip error')
									.text('该昵称已被注册');
						}
					});
		}
	}
}

function validate_password() {
	var password_value = $.trim($("#password").val());
	if (password_value == '') {
		$(this).siblings('.tip').removeClass().addClass('tip error').text(
				'密码不能为空');
		password_flag = false;
	} else if (password_value.length < 6 || password_value.length > 16) {// 数字
		$(this).siblings('.tip').removeClass().addClass('tip error').text(
				'密码要6-16位');
		password_flag = false;
	} else if (!isNaN(password_value) && password_value.length <= 9) {// 数字
		$(this).siblings('.tip').removeClass().addClass('tip error').text(
				'密码不能是9位以下纯数字');
		password_flag = false;
	} else {
		$(this).siblings('.tip').removeClass().addClass('tip success').text(
				' ok! ');
		password_flag = true;
	}
}

// 校验确认密码
function validate_repassword() {
	var password_value = $.trim($("#password").val());
	var repassword_value = $.trim($("#password2").val());

	if (repassword_value == '' || repassword_value == null) {
		$(this).siblings('.tip').removeClass().addClass('tip error').text(
				'确认密码不能为空');
		repassword_flag = false;
	} else if (!password_flag) {
		$(this).siblings('.tip').removeClass().addClass('tip error').text(
				'密码格式不正确');
		repassword_flag = false;
	} else if (password_value != repassword_value) {
		$(this).siblings('.tip').removeClass().addClass('tip error').text(
				'两次密码不一致');
		repassword_flag = false;
	} else {
		$(this).siblings('.tip').removeClass().addClass('tip success').text(
				' ok! ');
		repassword_flag = true;
	}
}

// timer处理函数
function set_remain_time() {
	if (curCount == 0) {
		window.clearInterval(InterValObj);
		$(".send-captcha").removeAttr("disabled").val("重新获取验证码");
	} else {
		curCount--;
		$(".send-captcha").val("请稍等" + curCount + "秒");
	}
}

$(function() {

	$('#nickname').focus(function() {
		var nickname_tip = $(this).siblings('.tip');
		if ($(nickname_tip).hasClass('success') == false) {
			$(nickname_tip).addClass('info').text('昵称是登录用户名和登录后显示的名称');
		}
	}).change(function() {
		nickname_changed = true;
		// alert('changed!');
	}).blur(validate_nickname);

	$("#password").focus(function() {
		var password_tip = $(this).siblings('.tip');
		if ($(password_tip).hasClass('success') == false) {
			$(password_tip).addClass('info').text('6-16位，且不能是9位以下纯数字');
		}
	}).blur(validate_password);

	$("#password2").focus(function() {
		var password2_tip = $(this).siblings('.tip');
		if ($(password2_tip).hasClass('success') == false) {
			$(password2_tip).addClass('info').text('请再输入一遍密码');
		}
	}).blur(validate_repassword);

	// 注册
	$('#register_submit').click(function() {
		// validate_nickname();
		validate_password();
		validate_repassword();
		// if (!nickname_flag) {
		// $('#nickname').focus();
		// return false;
		// }
		if (!password_flag) {
			$('#password').focus();
			return false;
		}
		if (!repassword_flag) {
			$('#repassword').focus();
			return false;
		}

		$("#register_form").submit();

	});
});
