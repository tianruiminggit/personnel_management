<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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

label {
	display: block;
}

form input {
	width: 70%;
}
</style>
</head>

<body class="gray-bg top-navigation">
	<%@include file="../../personal.jsp"%>
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
								<li class="dropdown">
									<a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 菜单 <span class="caret"></span></a>
									<ul role="menu" class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/employee/index.do">人事管理</a></li>
									<li><a href="${pageContext.request.contextPath}/check/index.do">考勤</a></li>
									<li><a href="${pageContext.request.contextPath}/salary/index.do">工资</a></li>
									<li><a href="${pageContext.request.contextPath}/dispatch/index.do">员工调度</a></li>
									<li><a href="${pageContext.request.contextPath}/evection/index.do">出差</a></li>
								</ul>
								</li>
							</ul>
							<ul class="nav navbar-top-links navbar-right" style="padding-right: 0;">
								<li class="dropdown" style="padding-right: 0;">
									<a aria-expanded="false" role="button" href="#" data-toggle="dropdown" style="padding-right: 0;">${userAccount.getE_name() } </a>
									<ul role="menu" class="dropdown-menu">
										<li><a href="" data-toggle="modal" data-target="#personal">个人信息</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-menu-right">
									<img src="${ pageContext.request.contextPath}/img/${userAccount.e_id }/touxiang.png" class="main_touxiang" />
								</li>
							<li><a href="login.html"> <i class="fa fa-sign-out"></i>
									退出
							</a></li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="wrapper wrapper-content">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="tabs-container">
								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab" href="#tab-1"
										aria-expanded="true"> 招聘/录用</a></li>
									<li class=""><a data-toggle="tab" href="#tab-2"
										aria-expanded="false">部门成员</a></li>
								</ul>
								<div class="tab-content">
									<div id="tab-1" class="tab-pane active">
										<div class="panel-body">
											<div class="row">
												<div class="col-sm-10">
													<div class="ibox float-e-margins">
														<div class="ibox-title">
															<span class="label label-info pull-right">全年</span>
															<h5>求职者</h5>
														</div>
														<div class="ibox-content">
															<!--<h1 class="no-margins">275,800</h1>-->
															<!--<div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i>-->
															<!--</div>-->
															<!--<small>新订单</small>-->
															<div class="example-wrap margin-sm-0">
																<div class="example">
																	<div class="btn-group hidden-xs" id="toolbar1"
																		role="group">
																		<button type="button" id="peopleAdd"
																			data-toggle="modal" data-target="#addPeopleModal"
																			class="btn btn-outline btn-default">
																			<i class="glyphicon glyphicon-plus"
																				aria-hidden="true"></i>
																		</button>
																	</div>
																	<table id="peopleTab" data-row-style="rowStyle"
																		data-height="300"></table>
																	<!-- <table id="testTab" data-toggle="table" data-url="${pageContext.request.contextPath}/employee/getPeople.do" data-mobile-responsive="true" data-row-style="rowStyle" data-height="250">
												<thead>
													<tr>
														<th data-field="P_ID">ID</th>
														<th data-field="P_NAME">姓名</th>
														<th data-field="SEX">性别</th>
														<th data-field="P_TEL">联系电话</th>
														<th data-field="D_NAME">求职部门</th>
														<th data-field="IDCARD">身份证</th>
													</tr>
												</thead>
											</table>-->
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-12">
													<div class="ibox float-e-margins">
														<div class="ibox-title">
															<span class="label label-info pull-right">全年</span>
															<h5>公司近期加入员工</h5>
														</div>
														<div class="ibox-content">
															<!--<h1 class="no-margins">275,800</h1>-->
															<!--<div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i>-->
															<!--</div>-->
															<!--<small>新订单</small>-->
															<div class="example-wrap margin-sm-0">
																<div class="example">
																	<div class="btn-group hidden-xs" id="toolbar"
																		role="group">
																		<button type="button" id="employeeAdd"
																			class="btn btn-outline btn-default">
																			<i class="glyphicon glyphicon-plus"
																				aria-hidden="true"></i>
																		</button>
																	</div>
																	<table id="employeeTab" data-mobile-responsive="true"
																		data-row-style="rowStyle" data-height="300">
																		<!--  <thead>
													<tr>
														<th data-field="e_id">ID</th>
														<th data-field="e_name">姓名</th>
														<th data-field="sex">性别</th>
														<th data-field="d_id">部门</th>
														<th data-field="e_tel">联系电话</th>
														<th data-field="e_job">职称</th>
														<th data-field="e_time">入职时间</th>
													</tr>
												</thead>-->
																	</table>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<button class="btn btn-primary btn-lg" data-toggle="modal"
												data-target="#myModal" id="bt_hide" style="display: none">
												雇员模态框</button>
											<button class="btn btn-primary btn-lg" data-toggle="modal"
												data-target="#peopleModal" id="bt_hide1"
												style="display: none">新人模态框</button>
											<!-- 模态框表单 -->
											<div class="modal fade" id="myModal" tabindex="-1"
												role="dialog" aria-labelledby="myModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<form action="" method="get">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal"
																	aria-hidden="true">&times;</button>
																<h4 class="modal-title" id="myModalLabel">资料详情</h4>
															</div>
															<div class="modal-body">
																<div class="row">
																	<div class="col-lg-7">
																			<label>编号</label> <input type="text" name="e_id"
																				id="e_id" readonly="true"> <label>姓名</label>
																			<input type="text" id="e_name" name="e_name">
																			<label>性别</label> <input type="text" id="esex"
																				name="sex"> <label>部门</label> <input
																				type="text" id="d_id" name="d_id"> <label>职称</label>
																			<input type="text" id="e_job" name="e_job"
																				readonly="true"> <label>联系电话</label> <input
																				type="text" id="e_tel" name="e_tel"> <label>身份证</label>
																			<input type="text" id="idcard" name="idcard"
																				readonly="true"> <label>入职实时间</label> <input
																				type="text" id="e_time" name="e_time"
																				readonly="true"> <label>工作属性</label> <input
																				type="text" id="e_type" name="e_type"
																				readonly="true">
																	</div>
																	<div class="col-lg-5">
																		<img src="${ pageContext.request.contextPath}/img/${userAccount.e_id }/touxiang.png" width="200px" height="200px" />
																	</div>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">关闭</button>
																<button type="submit" class="btn btn-primary">
																	完成处理</button>
															</div>
														</form>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal -->
											</div>
											<!-- 模态框表单 -->
											<div class="modal fade" id="peopleModal" tabindex="-1"
												role="dialog" aria-labelledby="peopleModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<form action="" method="get" id="form-people">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal"
																	aria-hidden="true">&times;</button>
																<h4 class="modal-title" id="myModalLabel">资料详情</h4>
															</div>
															<div class="modal-body">
																<div class="row">
																	<div class="col-lg-7">
																		<label>编号</label> <input type="text" name="p_id"
																			id="p_id" readonly="true"> <label>姓名</label>
																		<input type="text" id="p_name" name="p_name">
																		<label>性别</label> <input type="text" id="psex"
																			name="sex"> <label>部门</label> <input
																			type="text" id="pd_id" name="pd_id"> <label>联系电话</label>
																		<input type="text" id="p_tel" name="p_tel"> <label>身份证</label>
																		<input type="text" id="pidcard" name="idcard">
																	</div>
																	<div class="col-lg-5">
																		<img src="../img/a9.jpg" width="200px" height="200px" />
																	</div>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">关闭</button>
																<button id="peopleDelete" type="button"
																	class="btn btn-warning pull-left">淘汰</button>
																<button id="peopleEploy" type="button"
																	class="btn btn-primary">雇用</button>
															</div>
														</form>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal -->
											</div>
											<!-- 模态框表单 -->
											<div class="modal fade" id="addPeopleModal" tabindex="-1"
												role="dialog" aria-labelledby="peopleModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<form id="form_addPeople" action="" method="get">
															<div class="modal-header">
																<button type="button" class="close" data-dismiss="modal"
																	aria-hidden="true">&times;</button>
																<h4 class="modal-title" id="myModalLabel">资料详情</h4>
															</div>
															<div class="modal-body">
																<div class="row">
																	<div class="col-lg-7">
																			<label>姓名</label> <input type="text" name="p_name"
																				class="form-control uname" required=""> <label>性别</label>
																			<select name="sex">
																				<option value="1">男</option>
																				<option value="2">女</option>
																			</select> <label>部门</label> <input type="text" name="d_id">
																			<label>联系电话</label> <input type="text" name="p_tel"
																				class="form-control uname" required=""> <label>身份证</label>
																			<input type="text" name="idcard"
																				class="form-control uname" required="">
																	</div>
																	<div class="col-lg-5">
																		<img src="img/a9.jpg" width="200px" height="200px" />
																	</div>
																</div>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">关闭</button>
																<button id="addPeople" type="button"
																	class="btn btn-primary">添加</button>
															</div>
														</form>
													</div>
													<!-- /.modal-content -->
												</div>
												<!-- /.modal -->
											</div>
										</div>
									</div>
									<div id="tab-2" class="tab-pane">
										<div class="panel-body">
											<div class="row">
												<div class="col-sm-12">
													<div class="tabs-container">
														<ul class="nav nav-tabs">
															<li class="active"><a data-toggle="tab"
																href="#tab-dept" aria-expanded="true"> 部门人数统计</a></li>
															<c:forEach items="${dept }" var="d">
																<li class=""><a data-toggle="tab" onclick="employeeByDept(${d.D_ID})"
																href="#tab-${d.D_ID }" aria-expanded="true"> ${d.NAME }</a></li>
															</c:forEach>
														</ul>
														<div class="tab-content">
															<div id="tab-dept" class="tab-pane active">
																<div class="panel-body">
																		<div  class="col-sm-12" style="height: 300px;width:800px" id="bar-employee">
																		</div>
																</div>
															</div>
															<c:forEach items="${dept }" var="d">
																<div id="tab-${d.D_ID }" class="tab-pane">
																	<div class="panel-body">
																		<div class="col-sm-12">
																			<table id="${d.D_ID }" data-mobile-responsive="true"
																		data-row-style="rowStyle" data-height="300"></table>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

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
		$(function() {
			$("#employeeTab")
					.on(
							'click-row.bs.table',
							function(e, row, element) {
								//$(element).css({"color":"blue","font-size":"16px;"});  
								$
										.ajax({
											url : "${pageContext.request.contextPath}/employee/getEmployeeById.do",
											data : {
												"e_id" : row.E_ID
											},//携带参数
											datatype : "json",
											type : "post",
											success : function(result) {
												console.log(result);
												$("#e_id").val(result.e_id);
												$("#e_name").val(result.e_name);
												$("#e_tel").val(result.e_tel);
												$("#esex").val(result.sex);
												$("#d_id").val(result.d_id);
												$("#idcard").val(result.idcard);
												$("#e_type").val(result.e_type);
												$("#e_time").val(result.e_time);
												$("#e_job").val(result.e_job);
												$("#bt_hide").click();
											}

										});
							});

			$("#peopleTab")
					.on(
							'click-row.bs.table',
							function(e, row, element) {
								//$(element).css({"color":"blue","font-size":"16px;"});  
								$
										.ajax({
											url : "${pageContext.request.contextPath}/employee/getPeopleById.do",
											data : {
												"p_id" : row.P_ID
											},//携带参数
											datatype : "json",
											type : "post",
											success : function(result) {
												console.log(result);
												$("#p_id").val(result.P_ID);
												$("#p_name").val(result.P_NAME);
												$("#p_tel").val(result.P_TEL);
												$("#psex").val(result.PSEX);
												$("#pd_id").val(result.D_NAME);
												$("#pidcard")
														.val(result.IDCARD);
												$("#p_time").val(result.p_time);
												$("#bt_hide1").click();
											}

										});
							});

			$("#peopleTab")
					.bootstrapTable(
							{
								url : "${pageContext.request.contextPath}/employee/getPeople.do", //请求后台的URL（*）
								method : 'GET', //请求方式（*）
								striped : true, //是否显示行间隔色
								cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
								pagination : true, //是否显示分页（*）
								sortable : true, //是否启用排序
								toolbar : "#toolbar1",
								sortOrder : "asc", //排序方式
								sidePagination : "server", //分页方式：client客户端分页，server服务端分页（*）
								pageNumber : 1, //初始化加载第一页，默认第一页,并记录
								pageSize : 3, //每页的记录行数（*）
								pageList : [ 3, 5, 10 ], //可供选择的每页的行数（*）
								search : true, //是否显示表格搜索
								strictSearch : true,
								showColumns : true, //是否显示所有的列（选择显示的列）
								//showRefresh: true,                  //是否显示刷新按钮
								clickToSelect : true, //是否启用点击选中行
								//height: 500,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
								uniqueId : "ID", //每一行的唯一标识，一般为主键列
								//showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
								//cardView: false,                    //是否显示详细视图
								//得到查询的参数
								queryParams : function(params) {
									//这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
									var temp = {
										rows : params.limit, //页面大小
										page : (params.offset / params.limit) + 1, //页码
									//sort: params.sort,      //排序列名  
									//sortOrder: params.order //排位命令（desc，asc） 
									};
									return temp;
								},
								columns : [ {
									field : "P_ID",
									title : "编号",
									align : "center"
								}, {
									field : "P_NAME",
									title : "姓名",
									align : "center"
								}, {
									field : "SEX",
									title : "性别",
									align : "center"
								}, {
									field : "P_TEL",
									title : "联系电话",
									align : "center"
								}, {
									field : "D_NAME",
									title : "求职部门",
									align : "center"
								}, {
									field : "IDCARD",
									title : "身份证",
									align : "center"
								} ]
							});

			$("#employeeTab").bootstrapTable(
							{
								url : "${pageContext.request.contextPath}/employee/getEmployee.do", //请求后台的URL（*）
								method : 'GET', //请求方式（*）
								striped : true, //是否显示行间隔色
								cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
								pagination : true, //是否显示分页（*）
								sortable : true, //是否启用排序
								toolbar : "#toolbar",
								sortOrder : "asc", //排序方式
								sidePagination : "server", //分页方式：client客户端分页，server服务端分页（*）
								pageNumber : 1, //初始化加载第一页，默认第一页,并记录
								pageSize : 5, //每页的记录行数（*）
								pageList : [ 5, 10, 20 ], //可供选择的每页的行数（*）
								search : true, //是否显示表格搜索
								strictSearch : true,
								//showColumns: true,                  //是否显示所有的列（选择显示的列）
								//showRefresh: true,                  //是否显示刷新按钮
								clickToSelect : true, //是否启用点击选中行
								//height: 500,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
								uniqueId : "ID", //每一行的唯一标识，一般为主键列
								//showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
								//cardView: false,                    //是否显示详细视图
								//得到查询的参数
								queryParams : function(params) {
									//这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
									var temp = {
										rows : params.limit, //页面大小
										page : (params.offset / params.limit) + 1, //页码
									};
									return temp;
								},
								columns : [ {
									field : "E_ID",
									title : "编号",
									align : "center"
								}, {
									field : "E_NAME",
									title : "姓名",
									align : "center"
								}, {
									field : "SEX",
									title : "性别",
									align : "center"
								}, {
									field : "E_TEL",
									title : "联系电话",
									align : "center"
								}, {
									field : "D_NAME",
									title : "部门",
									align : "center"
								}, {
									field : "E_JOB",
									title : "职称",
									align : "center"
								}, {
									field : "E_TIME",
									title : "入职时间",
									align : "center"
								} ]
							});
			
			$.ajax({
				url:"${pageContext.request.contextPath}/employee/getEmployeeBar.do",
				data:{},
				datatype:"json",
				type:"post",
				success:function(result){
					var title=[];
					var values=[];
					for( var i in result){
						title.push(result[i].NAME);
						values.push(result[i].VALUE);
					}
					console.log(title);
					console.log(values);
					var ec=option = {
						    color: ['#3398DB'],
						    tooltip : {
						        trigger: 'axis',
						        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
						            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
						        }
						    },
						    grid: {
						        left: '3%',
						        right: '4%',
						        bottom: '3%',
						        containLabel: true
						    },
						    xAxis : [
						        {
						            type : 'category',
						            data : title,
						            axisTick: {
						                alignWithLabel: true
						            }
						        }
						    ],
						    yAxis : [
						        {
						            type : 'value'
						        }
						    ],
						    series : [
						        {
						            name:'人数',
						            type:'bar',
						            barWidth: '60%',
						            data:values
						        }
						    ]
						};
					var employee_bar = echarts.init(document.getElementById("bar-employee"));
					employee_bar.setOption(ec);
				}
			});
		});
		
		
		//删除新人
		$("#peopleDelete")
				.click(
						function() {
							swal(
									{
										title : "淘汰",
										text : "确定淘汰求职者:" + $("#p_name").val()
												+ "(" + $("#p_id").val() + ")?",
										type : "warning",
										showCancelButton : true,
										confirmButtonColor : "#DD6B55",
										confirmButtonText : "确定淘汰！",
										cancelButtonText : "取消淘汰！",
										closeOnConfirm : false,
										closeOnCancel : false
									},
									function(isConfirm) {
										if (isConfirm) {
											$
													.ajax({
														url : "${pageContext.request.contextPath}/employee/deletePeople.do",
														data : {
															"p_id" : $("#p_id")
																	.val()
														},
														type : "post",
														datatype : "json",
														success : function(
																result) {
															if (result.msg == "success") {
																swal("操作成功",
																		"",
																		"success");
															} else
																swal("添加失败",
																		"error");
														}

													});
										} else {
											swal("取消", "", "error")
										}
									});
						});
		//添加新人
		$("#addPeople").click(
						function() {
							$.ajax({
										url : "${pageContext.request.contextPath}/employee/addPeople.do",
										data : $("#form_addPeople").serialize(),
										datatype : "json",
										type : "post",
										success : function(result) {
											if (result.msg == "success") {
												swal("操作成功", "", "success");
											} else
												swal("添加失败", "error");
										}
									});
						});

		$("#peopleEploy")
				.click(
						function() {
							swal(
									{
										title : "选择录用部门",
										text : "<select id='selectdept'><option value='1001'>财务部</option><option value='1002'>人事部</option></select>",
										html : true,
										showCancelButton : true,
										cancelButtonText : "取消",
										closeOnConfirm : false
									},
									function(isConfirm) {
										$
												.ajax({
													url : "${pageContext.request.contextPath}/employee/employePeople.do?d_id="
															+ $("#selectdept")
																	.val(),
													data :$("#form-people").serialize(),
													datatype : "json",
													type : "post",
													success : function(data) {

													}
												})
									});
						});
		function employeeByDept(d_id){
			$("#"+d_id).bootstrapTable(
					{
						url : "${pageContext.request.contextPath}/employee/getEmployee.do", //请求后台的URL（*）
						method : 'GET', //请求方式（*）
						striped : true, //是否显示行间隔色
						cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
						pagination : true, //是否显示分页（*）
						sortable : true, //是否启用排序
						toolbar : "#toolbar",
						sortOrder : "asc", //排序方式
						sidePagination : "server", //分页方式：client客户端分页，server服务端分页（*）
						pageNumber : 1, //初始化加载第一页，默认第一页,并记录
						pageSize : 5, //每页的记录行数（*）
						pageList : [ 5, 10, 20 ], //可供选择的每页的行数（*）
						search : true, //是否显示表格搜索
						strictSearch : true,
						//showColumns: true,                  //是否显示所有的列（选择显示的列）
						//showRefresh: true,                  //是否显示刷新按钮
						clickToSelect : true, //是否启用点击选中行
						//height: 500,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
						uniqueId : "ID", //每一行的唯一标识，一般为主键列
						//showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
						//cardView: false,                    //是否显示详细视图
						//得到查询的参数
						queryParams : function(params) {
							//这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
							var temp = {
								rows : params.limit, //页面大小
								page : (params.offset / params.limit) + 1, //页码
								d_id : d_id
							};
							return temp;
						},
						columns : [ {
							field : "E_ID",
							title : "编号",
							align : "center"
						}, {
							field : "E_NAME",
							title : "姓名",
							align : "center"
						}, {
							field : "SEX",
							title : "性别",
							align : "center"
						}, {
							field : "E_TEL",
							title : "联系电话",
							align : "center"
						}, {
							field : "D_NAME",
							title : "部门",
							align : "center"
						}, {
							field : "E_JOB",
							title : "职称",
							align : "center"
						}, {
							field : "E_TIME",
							title : "入职时间",
							align : "center"
						} ]
					});
		}
	</script>
</body>

</html>