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
	    	.main_touxiang{
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
	<%@include file="../../personal.jsp" %>
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
	                            <li>
	                                <a href="login.html">
	                                    <i class="fa fa-sign-out"></i> 退出
	                                </a>
	                            </li>
                        	</ul>
						</div>
					</nav>
				</div>
				<div class="wrapper wrapper-content">
					<div class="container">
                    	<div class="row">
                    		<div class="col-md-4">
	                            <div class="ibox float-e-margins">
	                                <div class="ibox-title">
	                                    <h5>招聘/录用</h5>
	                                </div>
	                                <div class="ibox-content">
	                                	<div align="center">
	                                		<a href="${pageContext.request.contextPath}/employee/index.do">
	                                			<img src="${pageContext.request.contextPath}/img/招聘录用.png"/>
	                                		</a>
	                                	</div>
	                                </div>
	                             </div>
                            </div>
                            <div class="col-md-4">
	                            <div class="ibox float-e-margins">
	                                <div class="ibox-title">
	                                    <h5>考勤系统</h5>
	                                </div>
	                                <div class="ibox-content">
	                                	<div align="center">
	                                		<a href="${pageContext.request.contextPath}/check/index.do">
	                                			<img src="${pageContext.request.contextPath}/img/签到.png"/>
	                                		</a>
	                                	</div>
	                                </div>
	                             </div>
                            </div>
                            
                            <div class="col-md-4">
	                            <div class="ibox float-e-margins">
	                                <div class="ibox-title">
	                                    <h5>工资系统</h5>
	                                </div>
	                                <div class="ibox-content">
	                                	<div align="center">
	                                		<a href="${pageContext.request.contextPath}/salary/index.do">
	                                			<img src="${pageContext.request.contextPath}/img/钱.png"/>
	                                		</a>
	                                	</div>
	                                </div>
	                             </div>
                            </div>
                            
                            <div class="col-md-4">
	                            <div class="ibox float-e-margins">
	                                <div class="ibox-title">
	                                    <h5>员工调度</h5>
	                                </div>
	                                <div class="ibox-content">
	                                	<div align="center">
	                                		<a href="${pageContext.request.contextPath}/dispatch/index.do">
	                                			<img src="${pageContext.request.contextPath}/img/人事调动.png"/>
	                                		</a>
	                                	</div>
	                                </div>
	                             </div>
                            </div>
                            
                            <div class="col-md-4">
	                            <div class="ibox float-e-margins">
	                                <div class="ibox-title">
	                                    <h5>出差系统</h5>
	                                </div>
	                                <div class="ibox-content">
	                                	<div align="center">
	                                		<a href="${pageContext.request.contextPath}/evection/index.do">
	                                			<img src="${pageContext.request.contextPath}/img/出差记录.png"/>
	                                		</a>
	                                	</div>
	                                </div>
	                             </div>
                            </div>
                            
                            
                            
                    	</div>
                   </div>
				</div>
				<div class="footer">
					&copy;2018<div class="pull-right">By:三心科技有限公司</div>
				</div>
			</div>
		</div>
		<script>
			$(function(){
				if("${msg.upmsg}"!=""){
					if("${msg.upmsg}"=="success") swal({
						title:"修改头像成功",
						type:"success"
						},
						function(isConfirm){
						})
					else if("${msg.upmsg}"=="failed")	swal("修改头像失败","","error")
					else swal("${msg.upmsg}","","error")
				}
			})
		</script>
	</body>

</html>