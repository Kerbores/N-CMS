<%@page import="club.zhcs.cms.Application"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.5
Version: 4.5.2
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
<meta charset="utf-8" />
<title>NUTZ-ONEKEY-CMS</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<script type="text/javascript">
	var contextPath = '${base}';
</script>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="${base}/assets/metronic/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="${base}/assets/metronic/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
<link href="${base}/assets/metronic/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${base}/assets/metronic/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
<link href="${base}/assets/metronic/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link href="${base}/assets/metronic/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="${base}/assets/metronic/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="${base}/assets/metronic/global/css/components-md.min.css" rel="stylesheet" id="style_components" type="text/css" />
<link href="${base}/assets/metronic/global/css/plugins-md.min.css" rel="stylesheet" type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="${base}/assets/metronic/pages/css/login-5.min.css" rel="stylesheet" type="text/css" />
<style>
.login-captcha {
	padding-bottom: 30px;
	cursor: pointer;
}
</style>
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="${base}/assets/metronic/pages/img/login/logo.ico" />
<script src="${base}/assets/metronic/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${base}/assets/layer/layer.js" type="text/javascript"></script>
<script src="${base}/assets/n-csm/js/common.js" type="text/javascript"></script>
<script src="${base}/assets/n-csm/js/validation.js" type="text/javascript"></script>
</head>
<!-- END HEAD -->

<body class=" login">
	<!-- BEGIN : LOGIN PAGE 5-1 -->
	<div class="user-login-5">
		<div class="row bs-reset">
			<div class="col-md-6 bs-reset">
				<div class="login-bg" style="background-image:url(${base}/assets/metronic/pages/img/login/bg1.jpg)">
					<img class="login-logo" src="${base}/assets/metronic/pages/img/login/logo.png" />
				</div>
			</div>
			<div class="col-md-6 login-container bs-reset">
				<div class="login-content">
					<h1>Nutz Onekey Cms</h1>
					<p>一个基于 nutz-onekey 实现的简单 cms 系统</p>
					<form action="javascript:;" class="login-form" method="post">
						<div class="row">
							<div class="col-xs-4">
								<input class="form-control form-control-solid placeholder-no-fix" type="text" data-type="required" autocomplete="off" placeholder="请输入用户名" name="username" id="user" />
							</div>
							<div class="col-xs-4">
								<input class="form-control form-control-solid placeholder-no-fix" data-type="password" type="password" autocomplete="off" placeholder="请输入密码" name="password" id="password" />
							</div>
							<div class="col-xs-4 form-group ">
								<div class="input-group">
									<div class="input-group-control">
										<input type="text" class="form-control form-control-solid placeholder-no-fix" placeholder="请输入验证码" id="captcha">
										<div class="form-control-focus"></div>
									</div>
									<span class="input-group-btn btn-right"> <img src="${base}/captcha?length=4" class="login-captcha" title="点击刷新验证码">
									</span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4">
								<div class="rem-password">
									<p>
										记住我 <input type="checkbox" class="rem-checkbox" id="rememberMeCheckBox" />
									</p>
								</div>
							</div>
							<div class="col-sm-8 text-right">
								<div class="forgot-password">
									<a href="javascript:;" id="forget-password" class="forget-password">忘记密码?</a>
								</div>
								<button class="btn blue" type="button" id="login-btn">登录</button>
							</div>
						</div>
					</form>
					<!-- BEGIN FORGOT PASSWORD FORM -->
					<form class="forget-form" action="javascript:;" method="post">
						<h3 class="font-green">忘记密码 ?</h3>
						<p>请输入你的邮箱进行密码重置操作.</p>
						<div class="form-group">
							<div class="form-group form-md-line-input has-success">
								<div class="input-icon right">
									<input type="text" class="form-control placeholder-no-fix" placeholder="请输入电子邮箱" name="email"> <i class="icon-envelope"></i>
								</div>
							</div>
						</div>
						<div class="form-actions">
							<button type="button" id="back-btn" class="btn grey btn-default">返回</button>
							<button type="submit" class="btn blue btn-success uppercase pull-right">重置</button>
						</div>
					</form>
					<!-- END FORGOT PASSWORD FORM -->
				</div>
				<div class="login-footer">
					<div class="row bs-reset">
						<div class="col-xs-4 bs-reset">
							<ul class="login-social">
								<li><a href="javascript:;"> <i class="icon-social-facebook"></i>
								</a></li>
								<li><a href="javascript:;"> <i class="icon-social-twitter"></i>
								</a></li>
								<li><a href="javascript:;"> <i class="icon-social-dribbble"></i>
								</a></li>
							</ul>
						</div>
						<div class="col-xs-8 bs-reset">
							<div class="login-copyright text-right">
								<p><%=Application.config("copy.right")%>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END : LOGIN PAGE 5-1 -->
	<!--[if lt IE 9]>
<script src="${base}/assets/metronic/global/plugins/respond.min.js"></script>
<script src="${base}/assets/metronic/global/plugins/excanvas.min.js"></script>
<![endif]-->
	<!-- BEGIN CORE PLUGINS -->
	<script src="${base}/assets/metronic/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${base}/assets/metronic/global/plugins/js.cookie.min.js" type="text/javascript"></script>
	<script src="${base}/assets/metronic/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	<script src="${base}/assets/metronic/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${base}/assets/metronic/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="${base}/assets/metronic/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
	<script src="${base}/assets/metronic/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="${base}/assets/metronic/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
	<script src="${base}/assets/metronic/global/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="${base}/assets/metronic/global/scripts/app.min.js" type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script type="text/javascript">
		$(function() {
			//轮播
			$('.login-bg').backstretch([
				Common.getRootPath() + "/assets/metronic/pages/img/login/bg1.jpg",
				Common.getRootPath() + "/assets/metronic/pages/img/login/bg2.jpg",
				Common.getRootPath() + "/assets/metronic/pages/img/login/bg3.jpg"
			], {
				fade : 500,
				duration : 3000
			}
			);
			//隐藏找回密码
			$('.forget-form').hide();
			//交互事件
			$(document).on('click', '.login-captcha', function() {
				LOGIN.refreshCaptcha();
			}).on('keypress', '.login-form input', function(e) {
				if (e.which == 13) {
					LOGIN.doLogin();
				}
			}).on('keypress', '.forget-form input', function(e) {
				if (e.which == 13) {
					LOGIN.doReset();
				}
			}).on('click', '#forget-password', function() {
				LOGIN.toReset();
			}).on('click', '#back-btn', function() {
				LOGIN.toLogin();
			}).on('click', '#login-btn', function() {
				LOGIN.doLogin();
			});
		})
		var LOGIN = {
			refreshCaptcha : function() { //刷新验证码
				$('.login-captcha').attr('src', Common.getRootPath() + "/captcha?length=4&" + Math.random());
			},
			doLogin : function() { //登录
				if ($('.login-form').validation()) {
					$.post(Common.getRootPath() + '/system/login', {
						user : $('#user').val(),
						password : $('#password').val(),
						captcha : $('#captcha').val(),
						rememberMe : $('#rememberMeCheckBox')[0].checked
					}, function(result) {
						if (result.operationState == 'SUCCESS') {
							//TODO 跳转到系统主界面
							location.href = '${base}/system/main'
						} else {
							LOGIN.refreshCaptcha();
							Common.validationFail(result.data.reason, $('#login-btn'));
						}
					}, 'json');
				} else {
					return false;
				}
			},
			doReset : function() { //重置
				if ($('.forget-form').validation()) {
					$('.forget-form').submit();
				} else {
					return false;
				}
			},
			toReset : function() { //显示重置
				$('.login-form').hide();
				$('.forget-form').show();
			},
			toLogin : function() { //显示登录
				$('.login-form').show();
				$('.forget-form').hide();
			}
		}
	</script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>