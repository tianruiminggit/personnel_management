<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal fade" id="personal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
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
								<form action="" method="get" id="form_myInfo">
									<label>编号</label>							
									<input type="text" name="e_id" id="eid" value="${userAccount.e_id}" readonly="true">
									<label>姓名</label>
									<input type="text" id="ename"  name="e_name" value="${userAccount.e_name}" required="required">
									<label>性别</label>
									<input type="text" id="sex"  name="sex" value="${userAccount.sex }" readonly="true">
									<label>部门</label>
									<input type="text" id="did" name="d_id" value="${userAccount.d_id }" readonly="true">
									<label>职称</label>
									<input type="text" id="ejob"  name="e_job" value="${userAccount.e_job }" readonly="true">
									<label>联系电话</label>
									<input type="text" id="etel"  name="e_tel" value="${userAccount.e_tel }" >
									<label>身份证</label>
									<input type="text" id="myIdcard"  name="idcard" value="${userAccount.idcard }" >
									<label>入职实时间</label>
									<input type="text" id="mytime"  name="e_time" value="${userAccount.e_time }" readonly="true">
									<label>工作属性</label>
									<input type="text" id="etype"  name="e_type" value="${userAccount.e_type }" readonly="true">
									</form>
									</div>
								<div class="col-lg-5"> 
									<img id="myTX" src="${ pageContext.request.contextPath}/img/${userAccount.e_id }/touxiang.png" width="200px" height="200px"/>
									<form method="post" enctype="multipart/form-data" id="form-file" action="${pageContext.request.contextPath}/employee/upIMG.do">
										<input type="file" id="exTX" name="file">
										<button type="submit" id="upTX" class="btn btn-success pull-right">修改头像</button>
									</form>
								</div>
							</div>
						<div class="modal-footer">
						<button type="button" class="btn btn-success" data-dismiss="modal">
							确定
						</button>
						<button type="submit" id="btnUpdate" class="btn btn-primary pull-left">
							修改信息
						</button>
						</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		</div>
		
		<script>
			$("#btnUpdate").click(function(){
				$.ajax({
					url:"${pageContext.request.contextPath}/employee/updateEmp.do",
					data:$("#form_myInfo").serialize(),
					datatype:"json",
					type:"post",
					success:function(result){
						if(result.msg=="success"){
							swal("操作成功","","success");
						}else swal("添加失败","error");
					}
				});
			});
			
			$("#exTX").change(function(){
				 var file=document.getElementById("exTX").files[0];                 //因为每次只上传了一张图片，所以获取到flObj.files[0];    
	              var fReader=new FileReader();
	              fReader.readAsDataURL(file)
	              fReader.onload=function(e)
	              {
	                  document.getElementById("myTX").src= this.result
	              }
			});
			/*$("#upTX").click(function(){
				$.ajax({
					url:"${pageContext.request.contextPath}/employee/upIMG.do",
					data:$("#form-file").serialize(),
					contentType: false, //必须
			        processData: false, //必须
					datatype:"json",
					type:"post",
					success:function(){
						console.log("up")
					}
				})
			});*/
		</script>