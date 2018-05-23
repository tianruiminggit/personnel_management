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

.myLabel {
	display: block;
}
.dis_img{
	width: 50px;
	height: 50px;
	border-radius: 50%;
}
form input {
	width: 70%;
}
</style>
</head>

<body class="gray-bg">
	<%@include file="../../personal.jsp"%>
	<div class="col-sm-12">
		<div class="ibox">
			<div class="ibox-content">
				<h3>工作调度列表</h3>
				<p class="small">
					<i class="fa fa-hand-o-up"></i> 在列表之间拖动任务面板
				</p>

				<div class="input-group">
					<input type="text" placeholder="添加新任务"
						class="input input-sm form-control"> <span
						class="input-group-btn">
						<button type="button" class="btn btn-sm btn-white">
							<i class="fa fa-plus"></i> 添加
						</button>
					</span>
				</div>

				<ul class="sortable-list connectList agile-list">
					<c:forEach var="dis" items="${dispatchList}">
						<li class="success-element"><img src="../img/调度.png"
						class="pull-right dis_img" /> <label class="myLabel">原岗位:<span
							id="1">${dis.ODNAME}</span></label> <label class="myLabel">新岗位:<span id="2">${dis.NDNAME}</span></label>
						<label class="myLabel">调度理由:<span id="3">${dis.D_CASE }</span></label>
						<div class="agile-detail">
							<i class="fa fa-clock-o"></i> <span id="4">${dis.DISPATCH_TIME }</span>
						</div></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>

	<script>
		
	</script>
</body>

</html>