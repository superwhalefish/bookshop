<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户登陆</title>
<link rel="stylesheet" href="js/jquery-easyui-1.4.3/themes/icon.css" />
<link rel="stylesheet"
	href="js/jquery-easyui-1.4.3/themes/default/easyui.css" />
<script type="text/javascript"
	src="js/jquery-easyui-1.4.3/jquery.min.js"></script>
<script type="text/javascript"
	src="js/jquery-easyui-1.4.3/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="js/jquery-easyui-1.4.3/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	function submitForm() {
		var name = $("#username").val();
		var pwd = $("#userpsw").val();
		var flag = $("#frm").form("validate");
		if (flag) {
			login(name, pwd);
		} else {
			$.messager.alert("提示", "输入内容为空");
		}
	}

	function login(name, pwd) {
		$.post("/bookshop/login", {
			un : name,
			pwd : pwd
		}, function(res) {
			if (res == 1) {
				$.messager.alert("提示", "请输入账号");
			} else if (res == 2) {
				$.messager.alert("提示", "登陆成功");
				window.location.href="/bookshop/goCart"
			} else if (res == 3) {
				$.messager.alert("提示", "密码错误");
			} else if (res == 4) {
				$.messager.alert("提示", "此账号被登录");
			} else if (res == 5) {
				$.messager.alert("提示", "账号已被锁定，请申诉");
			} else if (res == 6) {
				$.messager.alert("提示", "此账号不存在");
			}

		}, "json")
	}
</script>
</head>
<body>
	<div
		style="margin-top: 180px; margin-left: 600px; width: 400px; height: 400px;">
		<div class="easyui-panel" title="用户登录页面" id="uwin">
			<div style="padding: 20px; margin-left: 20px;">
				<form id="frm" >
					<table cellpadding="5">
						<tr>
							<td>用户名：</td>
							<td><input id="username" name="name"
								class="easyui-validatebox" data-options="required:true" /></td>
						</tr>
						<tr>
							<td>密码：</td>
							<td><input id="userpsw" type="password" name="psw"
								class="easyui-validatebox" data-options="required:true" /></td>
						</tr>

					</table>
				</form>
				<br />
				<div style="text-align: center; padding-top: 5px;">
					<a class="easyui-linkbutton" data-options="iconCls:'icon-ok'"
						onclick="submitForm()">登陆</a> <a class="easyui-linkbutton"
						data-options="iconCls:'icon-clear'" onclick="clearForm()">取消</a>
				</div>
			</div>
			<!-- 	<div>
				<label for=""><input type="checkbox" id="check">7天免登陆</label>
			</div> -->
		</div>
	</div>
</body>
</html>