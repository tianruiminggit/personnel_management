<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="mycss.jsp" %>  
<%@include file="myjs.jsp" %>        
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

		<title>三心 人事管理系统 - 登录</title>
		<meta name="keywords" content="三心 人事管理系统,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
		<meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
		<!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
		<script>
			if (window.top !== window.self) {
				window.top.location = window.location;
			}
		</script>

	</head>

	<body class="signin">
		<div class="signinpanel">
			<div class="row">
				<div class="col-sm-7">
					<div class="signin-info">
						<div class="logopanel m-b">
							<h1>[ 三❤ ]</h1>
						</div>
						<div class="m-b"></div>
						<h4>欢迎使用 <strong>三心 人事管理系统</strong></h4>
						<ul class="m-b">
							<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势一</li>
							<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势二</li>
							<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势三</li>
							<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势四</li>
							<li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势五</li>
						</ul>
						<!--<strong>还没有账号？ <a href="#">立即注册&raquo;</a></strong>-->
					</div>
				</div>
				<div class="col-sm-5">
					<form method="post" action="${pageContext.request.contextPath}/login.do" id="form">
						<h4 class="no-margins">登录：</h4>
						<p class="m-t-md">登录到三心人事系统</p>
						<input type="text" class="form-control uname" placeholder="用户名" required="" id="e_id" />
						<input type="password" class="form-control pword m-b" placeholder="密码" required="" id="e_pwd"/>
						<a href="">忘记密码了？</a>
						<input type="button" class="btn btn-success btn-block" id="login" value="登录">
					</form>
				</div>
			</div>
			<div class="signup-footer">
				<div class="pull-left">
					&copy;2018
					<div class="pull-right">By:三心科技有限公司</div>
				</div>
			</div>
		</div>
		
		
		<script>
			$(":input").blur(function(){
//				console.log($(this).css)
			});
			$("#login").click(function(){
				var username = $("#e_id").val();
				var password = $("#e_pwd").val();
				$.ajax({
					url:"${pageContext.request.contextPath}/preLogin.do",
					data:{"e_id":username,"e_pwd":password},
					datatype:"json",
					type:"post",
					success:function(result){
						if(result.type=="error"){
							swal(result.msg,"",result.type);
						}
						else{
							$("#form").submit();
						}
					}
				});

			});
			
		</script>
	</body>

</html>