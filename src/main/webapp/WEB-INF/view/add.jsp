<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resource/bootstrap.css">
<script type="text/javascript" src="/resource/jquery-3.2.1.js"></script>
<script type="text/javascript">
	function add() {
		var param=$("form").serialize();
		alert(param);
		$.post("add",param,function(msg){
			if(msg){
				alert("添加成功");
				
				location="list";
			}else{
				alert("添加失败");
			}
		},"json")
	}
</script>
</head>
<body>
	<form action="">
		<table class="table">
			<tr>
				<td>商品名称</td>
				<td><input type="text" name="sname"></td>
			</tr>
			<tr>
				<td>英文名称</td>
				<td><input type="text" name="syname"></td>
			</tr>
			<tr>
				<td>商品品牌</td>
				<td>
					<select name="tid">
						<option value="">请选择</option>
						<option value="1">生活用品</option>
						<option value="2" >电器</option>
						<option value="3" >出行工具</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>商品种类</td>
				<td>
					<select name="bid">
						<option value="">请选择</option>
						<option value="1" >华为</option>
						<option value="2" >阿里</option>
						<option value="3" >京东</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>尺寸</td>
				<td><input type="text" name="ssize"></td>
			</tr>
			<tr>
				<td>单价(元)</td>
				<td><input type="text" name="sprice"></td>
			</tr>
			<tr>
				<td>数量</td>
				<td><input type="text" name="snum"></td>
			</tr>
			<tr>
				<td>标签</td>
				<td><input type="text" name="sbq"></td>
			</tr>
			<tr>
				<td>图片</td>
				<td><input type="file" name="pic"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="保存" onclick="add()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>