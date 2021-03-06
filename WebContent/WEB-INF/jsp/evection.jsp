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
							<li class="dropdown"><a aria-expanded="false" role="button"
								href="#" class="dropdown-toggle" data-toggle="dropdown"> 菜单
									<span class="caret"></span>
							</a>
								<ul role="menu" class="dropdown-menu">
									<li><a
										href="${pageContext.request.contextPath}/employee/index.do">人事管理</a></li>
									<li><a
										href="${pageContext.request.contextPath}/check/index.do">考勤</a></li>
									<li><a
										href="${pageContext.request.contextPath}/salary/index.do">工资</a></li>
									<li><a
										href="${pageContext.request.contextPath}/dispatch/index.do">员工调度</a></li>
									<li><a
										href="${pageContext.request.contextPath}/evection/index.do">出差</a></li>
								</ul></li>
						</ul>
						<ul class="nav navbar-top-links navbar-right"
							style="padding-right: 0;">
							<li class="dropdown" style="padding-right: 0;"><a
								aria-expanded="false" role="button" href="#"
								data-toggle="dropdown" style="padding-right: 0;">${userAccount.getE_name() }
							</a>
								<ul role="menu" class="dropdown-menu">
									<li><a href="" data-toggle="modal" data-target="#personal">个人信息</a>
									</li>
								</ul></li>
							<li class="dropdown-menu-right"><img
								src="${ pageContext.request.contextPath}/img/${userAccount.e_id }/touxiang.png"
								class="main_touxiang" /></li>
							<li><a href="login.html"> <i class="fa fa-sign-out"></i>
									退出
							</a></li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="wrapper wrapper-content">
				<div class="container">
					<div class="col-sm-12">
						<div class="tabs-container">
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" href="#tab-1"
									aria-expanded="true"> 第一个选项卡</a></li>
								<li class=""><a data-toggle="tab" href="#tab-2"
									aria-expanded="false" id="evectionOfEvent">第二个选项卡</a></li>
							</ul>
							<div class="tab-content">
								<div id="tab-1" class="tab-pane active">
									<div class="panel-body">
										<div class="col-sm-12">
											<div class="ibox float-e-margins">
												<div class="ibox-title">
													<span class="label label-warning pull-right">月</span>
													<h5>本月出差日程视图</h5>
													<a href="#" data-toggle="modal" data-target="#addEvectionModel"
														class="pull-right btn btn-primary"><i
														class="fa fa-plus"></i>新增出差</a>
												</div>
												<div class="ibox-content">
													<div id="myCalendar"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="tab-2" class="tab-pane">
									<div class="panel-body">
										<ul class="notes">
										</ul>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- 模态框表单 -->
			<div class="modal fade" id="addEvectionModel" tabindex="-1"
				role="dialog" aria-labelledby="peopleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<form id="form-addEvection" action="" method="get">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">出差详情</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-lg-7">
										<label>姓名</label> 
										<input type="text" name="e_name"
											class="form-control uname" required="" value="${userAccount.e_name } "> 
										<label>编号</label> 
										<input type="text" name="e_id" 
										class="form-control uname" required="" value="${userAccount.e_id }"> 
										<label>出差地</label>
										<input type="text" name="o_city" class="form-control uname"
											required=""> 
										<label>出差时间</label> 
										<input type="date" id="outTime"
											name="o_outtime" class="form-control uname" required="">
										<label>结束时间</label> 
										<input type="date" id="backTime"
											name="o_backtime" class="form-control uname" required="">
									</div>
									<div class="col-lg-5">
										<label>交通补贴</label> 
										<input type="number"
											name="s_traffic" class="form-control uname" required="">
										<label>住宿补贴</label> 
										<input type="number"
											name="s_hotel" class="form-control uname" required="">
										<label>出差补贴</label> 
										<input type="number" id="s_out"
											name="s_out" class="form-control uname" readonly="readonly">
										<label>出差天数</label> 
										<input type="number" id="outNum"
											name="s_out" class="form-control uname" readonly="readonly">
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button id=addEvection type="button" class="btn btn-primary">添加</button>
							</div>
						</form>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<div class="footer">
				&copy;2018
				<div class="pull-right">By:三心科技有限公司</div>
			</div>
		</div>
	</div>
	<script>
			var dData=eval(${evectionOfDay});
			$("#myCalendar").fullCalendar({
				header: {
					left: 'prev,next',
					center: 'title'
				},
				events: dData
			})
			$("#check_bt").click(function() {
				var code = '';
				var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
				for (var i = 0; i < 4; i++) {
					var index = Math.floor(Math.random() * 36);
					code += random[index];
				}
				swal({
						title: code,
						type: "input",
						inputPlaceholder: "请输入上方验证码",
						showCancelButton: true,
						closeOnConfirm: false

					},
					function(inputValue) {
						if (inputValue === false) return false;
						if (inputValue === "") {
							swal.showInputError("请输入验证码！")
							return false;
						}
						if (inputValue.toUpperCase() === code) {
							//              		swal("打卡成功","","success");
							$.ajax({
								url: "insertCheck.do",
								data: {}, //携带参数
								datatype: "json",
								type: "post",
								success: function(result) {
									swal(result, "", "success");
								}
							});
						}
					}
				);
			});
			$("#evectionOfEvent").click(function(){
				$(".notes").empty();
				$.ajax({
					url: "getEvectionOfEvent.do",
					data: {}, //携带参数
					datatype: "json",
					type: "post",
					success: function(result) {
						console.log(result)
						for(var i=0;i<result.length;i++){
							var html = "";
							var tdata = result[i];
							html+="<li class='li_note' id='"+tdata.O_ID+"'>";
							html+="<div><h4>"+tdata.O_CITY+"</h4>";
							html+="<p>出发时间:"+tdata.O_OUTTIME+"</p>";
							html+="<p>结束时间:"+tdata.O_BACKTIME+"</p>";
							html+="<p>交通补贴:"+tdata.S_TRAFFIC+"</p>";
							html+="<p>住宿补贴:"+tdata.S_HOTEL+"</p>";
							html+="<p>出差补贴:"+tdata.S_OUT+"</p>";
							html+="</div></li>";
							$(".notes").append(html);
						}
					}
				});
			});
			
			$("input[type='date']").change(function(){
				var s = new Date($("#outTime").val());
				var e = new Date($("#backTime").val());
				console.log(e);
				if(s!=""&&e!=""){
					var i= (parseInt(e.getTime()-s.getTime()) / (1000 * 60 * 60 * 24))+1;
					$("#outNum").val(i);
					$("#s_out").val(i*100);
				}
			})
			$("#addEvection").click(function(){
				$.ajax({
					url:"${pageContext.request.contextPath}/evection/insertEvection.do",
					data:$("#form-addEvection").serialize(),
					type:"post",
					datatype:"json",
					success:function(result){
						
					}
				})
			})
		</script>
</body>

</html>
</html>