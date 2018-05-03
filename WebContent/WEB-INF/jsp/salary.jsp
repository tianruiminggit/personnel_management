<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../mycss.jsp"%>
<%@include file="../../myjs.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<style>
.main_touxiang {
	border-radius: 50%;
	width: 45px;
	height: 45px;
}
</style>
</head>

<body class="gray-bg top-navigation">
	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom white-bg">
				<nav class="navbar navbar-static-top" role="navigation">
					<div class="navbar-header">
						<button aria-controls="navbar" aria-expanded="false"
							data-target="#navbar" data-toggle="collapse"
							class="navbar-toggle collapsed" type="button">
							<i class="fa fa-reorder"></i>
						</button>
						<a href="#" class="navbar-brand">三心</a>
					</div>
					<div class="navbar-collapse collapse" id="navbar">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#" class="dropdown-toggle" data-toggle="dropdown"> 菜单
									<span class="caret"></span>
							</a>
								<ul role="menu" class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/employee/index.do">招聘/录用</a></li>
									<li><a href="${pageContext.request.contextPath}/check/index.do">考勤</a></li>
									<li><a href="${pageContext.request.contextPath}/salary/index.do">工资</a></li>
									<li><a href="${pageContext.request.contextPath}/dispatch/index.do">员工调度</a></li>
									<li><a href="${pageContext.request.contextPath}/evection/index.do">出差</a></li>
								</ul></li>
						</ul>
						<ul class="nav navbar-top-links navbar-right"
							style="padding-right: 0;">
							<li class="dropdown" style="padding-right: 0;"><a
								aria-expanded="false" role="button" href="#"
								data-toggle="dropdown" style="padding-right: 0;"> ${userAccount.getE_name() } </a>
								<ul role="menu" class="dropdown-menu">
									<li><a href="">个人信息</a></li>
								</ul></li>
							<li class="dropdown-menu-right"><img src="img/a2.jpg"
								class="main_touxiang" /></li>
							<li><a href="login.html"> <i class="fa fa-sign-out"></i>
									退出
							</a></li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-md-4">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-primary pull-right">LAST</span>
								<h5>上月工资</h5>
							</div>
							<div class="ibox-content">
								<div align="center">
									<div class="row">
										<span class="label pull-left">基本工资</span> <span
											class="label label-info pull-right" id="salary_base">&yen;<span>${mySalary.S_BASIC}</span></span>
									</div>
									<br />
									<div class="row">
										<span class="label pull-left">奖金</span> <span
											class="label label-info pull-right" id="salary_jj">&yen;<span>${mySalary.S_CHECK}</span></span>
									</div>
									<br />
									<div class="row">
										<span class="label pull-left">补贴</span> <span
											class="label label-info pull-right" id="salary_butie">&yen;<span>${mySalary.S_OUT+mySalary.S_FOOD}</span></span>
									</div>
									<br />
									<div class="row">
										<span class="label pull-left">总额</span> <span
											class="label label-success pull-right" id="salary">&yen;<span>${mySalary.S_SUM}</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-8">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-warning pull-right">月</span>
								<h5>上月工资饼图</h5>
							</div>
							<div class="ibox-content">
								<div style="height: 200px;" id="salary_circle"></div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<span class="label label-warning pull-right">年</span>
								<h5>今年工资记录图</h5>
							</div>
							<div class="ibox-content">
								<div style="height: 200px;" id="salary_line"></div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="footer">
				&copy;2018
				<div class="pull-right">By:三心科技有限公司</div>
			</div>
		</div>
	</div>

	<script>
		$(function(){
			$.ajax({
				url:"${pageContext.request.contextPath}/salary/getSalaryEchart.do",
				data:{},
				datatype:"json",
				type:"post",
				success:function(result){
					//console.log(result);
					var cir = result.circle;
					var line = result.line;
					console.log(result);
					//工资饼图处理
					var salary_circle = echarts.init(document.getElementById("salary_circle"));
					var echarts_cir_salary = echarts_cir();
					var title = spiltJson(cir).key;
					echarts_cir_salary.legend.data=title;
					echarts_cir_salary.series[0].data=cir;
					salary_circle.setOption(echarts_cir_salary);
					//工资折线图处理
					var salary_line = echarts.init(document.getElementById("salary_line"));
					var echarts_line_salary = echarts_line();
					var ldata = spiltJson(line);
					echarts_line_salary.xAxis.data=ldata.key;
					echarts_line_salary.series[0].data=ldata.val;
					salary_line.setOption(echarts_line_salary);
				}
			});
		})
	</script>
</body>

</html>