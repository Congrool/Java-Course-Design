<%@ page language="java"
	contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

	<head>
		<meta charset="UTF-8">

		<title>个人主页</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!--导入核心文件-->
		<script src="bootstrap3/js/holder.js"></script>
		<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css">
		<script src="bootstrap3/jquery-1.9.1.min.js"></script>
		<script src="bootstrap3/js/bootstrap.js"></script>
		<!-- 字体图标 -->
		<link rel="stylesheet" href="../bootstrap3/font-awesome-4.7.0/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="css/layout.css" />
		<link rel="stylesheet" type="text/css" href="css/top.css" />
		<link href="css/multiColumnTemplate.css" rel="stylesheet" type="text/css">
	</head>

		<jsp:include page="Toptemplate.jsp"></jsp:include>
		<div class="container" style="font-family:Microsoft YaHei;">
	
			<div class="col-md-2">
				<!--左侧导航开始-->
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<!--主选项：我的订单-->
							<span class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">我的收藏</a>
							</span>
						</div>
						<div id="collapseOne" class="panel-collapse collapse">
							<div class="panel-body">
								<div><a href="favorites.jsp">全部收藏</a></div>
								<div><a href="comments.jsp">我的评论</a></div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<!--主选项：资料修改-->
							<span class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">资料修改</a>
							</span>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse in">
							<div class="panel-body">
								<div ><a href="password.jsp">修改密码</a></div>
								<div><a href="userdata.jsp"><b>个人资料</b></a></div>
								<div><a href="upload.jsp">上传头像</a></div>
							</div>
						</div>
					</div>
				</div>
				<!--左侧导航结束-->
			</div>
			<div class="col-md-10	">
				<div class="panel panel-default">
					<ul class="nav nav-tabs">
						<li><a href="password.jsp">修改密码</a></li>
						<li class="active"><a href="#">个人资料</a></li>
						<li><a href="upload.jsp">上传头像</a></li>
					</ul>
					<div class="panel-body">
						<!--修改资料表单开始-->
						<form  action="userprofile" method="post" class="form-horizontal" role="form">
							<div class="form-group">
								<label class="col-md-2 control-label">用户名：</label>
								<div class="col-md-8">
									<input type="text" class="form-control" value="${username}" name="username" readonly="readonly">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">电话号码：</label>
								<div class="col-md-8">
									<input type="text" class="form-control" placeholder="请输入电话号码" value="${sessionScope.user.phone}" name="phone">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">电子邮箱：</label>
								<div class="col-md-8">
									<input type="email" class="form-control" placeholder="请输入电子邮箱"  value="${user.email }"  name="email">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">性别：</label>
								<div class="col-md-8">
									<label class="radio-inline">
										<input type="radio" name="gender" value="m"  <c:if test="${user.gender eq 1}">checked</c:if>>男
									</label>
									<label class="radio-inline">
										<input type="radio" name="gender" value="f" <c:if test="${user.gender eq 0}">checked</c:if> >女
									</label>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<input type="submit" class="btn btn-primary" value="修改" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</body>

</html>