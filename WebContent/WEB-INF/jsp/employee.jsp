<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../mycss.jsp" %>  
<%@include file="../../myjs.jsp" %> 
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
			label{
				display: block;
			}
			form input{
				width: 70%;
			}
		</style>
	</head>

	<body class="gray-bg top-navigation">
		<div id="wrapper">
			<div id="page-wrapper" class="gray-bg">
				<div class="row border-bottom white-bg">
					<nav class="navbar navbar-static-top" role="navigation">
						<div class="navbar-header">
							<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
	                            <i class="fa fa-reorder"></i>
	                        </button>
							<a href="#" class="navbar-brand">三心</a>
						</div>
						<div class="navbar-collapse collapse" id="navbar">
							<ul class="nav navbar-nav">
								<li class="dropdown">
									<a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> 菜单 <span class="caret"></span></a>
									<ul role="menu" class="dropdown-menu">
										<li><a href="">菜单列表</a>
										</li>
										<li><a href="">菜单列表</a>
										</li>
										<li><a href="">菜单列表</a>
										</li>
										<li><a href="">菜单列表</a>
										</li>
									</ul>
								</li>
							</ul>
							<ul class="nav navbar-top-links navbar-right" style="padding-right: 0;">
								<li class="dropdown" style="padding-right: 0;">
									<a aria-expanded="false" role="button" href="#" data-toggle="dropdown" style="padding-right: 0;"> 某某某 </a>
									<ul role="menu" class="dropdown-menu">
										<li><a href="">菜单列表</a>
										</li>
									</ul>
								</li>
								<li class="dropdown-menu-right">
									<img src="img/a2.jpg" class="main_touxiang" />
								</li>
								<li>
									<a href="login.html">
										<i class="fa fa-sign-out"></i> 退出
									</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
				<!--内容部分-->
				<div class="wrapper wrapper-content">
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
											<table id="testTab" data-toggle="table" data-url="${pageContext.request.contextPath}/employee/getPeople.do" data-mobile-responsive="true" data-row-style="rowStyle" data-height="250">
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
											</table>
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
									<h5>求职者</h5>
								</div>
								<div class="ibox-content">
									<!--<h1 class="no-margins">275,800</h1>-->
									<!--<div class="stat-percent font-bold text-info">20% <i class="fa fa-level-up"></i>-->
									<!--</div>-->
									<!--<small>新订单</small>-->
									<div class="example-wrap margin-sm-0">
										<div class="example">
											<table id="tab_employ" data-toggle="table" data-url="${pageContext.request.contextPath}/employee/getEmployee.do" data-mobile-responsive="true" data-row-style="rowStyle" data-height="250">
												<thead>
													<tr>
														<th data-field="e_id">ID</th>
														<th data-field="e_name">姓名</th>
														<th data-field="sex">性别</th>
														<th data-field="d_id">部门</th>
														<th data-field="e_tel">联系电话</th>
														<th data-field="e_job">职称</th>
														<th data-field="e_time">入职时间</th>
													</tr>
												</thead>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" id="bt_hide" style="display: none">
						开始演示模态框
					</button>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="" method="get">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
							<h4 class="modal-title" id="myModalLabel">
							资料详情
						</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-lg-7">
									<form>
									<label>编号</label>							
									<input type="text" name="e_id" id="e_id" readonly="true">
									<label>姓名</label>
									<input type="text" id="e_name"  name="e_name">
									<label>性别</label>
									<input type="text" id="sex"  name="sex">
									<label>部门</label>
									<input type="text" id="d_id" name="d_id">
									<label>职称</label>
									<input type="text" id="e_job"  name="e_job" readonly="true">
									<label>联系电话</label>
									<input type="text" id="e_tel"  name="e_tel">
									<label>身份证</label>
									<input type="text" id="idcard"  name="idcard" readonly="true">
									<label>入职实时间</label>
									<input type="text" id="e_time"  name="e_time" readonly="true">
									<label>工作属性</label>
									<input type="text" id="e_type"  name="e_type" readonly="true">
								</div>
								<div class="col-lg-5"> 
									<img src="img/a9.jpg" width="200px" height="200px"/>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
							<button type="submit" class="btn btn-primary">
							完成处理
						</button>
						</div>
					</form>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
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
				$("#tab_employ").on('click-row.bs.table', function(e, row, element) {
					//$(element).css({"color":"blue","font-size":"16px;"});  
					$.ajax({
						url:"${pageContext.request.contextPath}/employee/getEmployeeById.do",
            			data:{"e_id":row.e_id},//携带参数
            			datatype:"json",
            			type:"post",
            			success:function(result){
            				console.log(result);
            				$("#e_id").val(result.e_id);
            				$("#e_name").val(result.e_name);
            				$("#e_tel").val(result.e_tel);
            				$("#sex").val(result.sex);
            				$("#d_id").val(result.d_id);
            				$("#idcard").val(result.idcard);
            				$("#e_type").val(result.e_type);
            				$("#e_time").val(result.e_time);
            				$("#e_job").val(result.e_job);
            				$("#bt_hide").click();
            			}
						
					});
				});
				
				
			})
		</script>
	</body>

</html>