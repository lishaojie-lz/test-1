<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resource/bootstrap.css">
<script type="text/javascript" src="/resource/jquery-3.2.1.js"></script>
<script type="text/javascript">
	function fenye(pageNum) {
		$("[name=pageNum]").val(pageNum);
		$("form").submit();
	}
	function add() {
		location="/toAdd";
	}
</script>
</head>
<body>
	<form action="list" method="post">
		<input type="hidden" name="pageNum">
		种类:<select name="type">
				<option value=""></option>
				<option value="生活用品" >生活用品</option>
				<option value="电器" >电器</option>
				<option value="出行工具" >出行工具</option>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp;
		品牌: <select  name="brand">
				<option value=""></option>
				<option value="华为" >华为</option>
				<option value="阿里">阿里为</option>
				<option value="京东">京东</option>
		</select>
		&nbsp;&nbsp;&nbsp;&nbsp;
		单价范围:<input type="text" name="p1" value="${sVo.p1 }">-<input type="text" name="p2" value="${goodsVo.p2 }">&nbsp;&nbsp;&nbsp;&nbsp;
		商品名称:<input type="text" name="sname" value="${sVo.sname }">&nbsp;&nbsp;&nbsp;&nbsp;
		<button>搜索</button>
		<input type="button" value="添加"  onclick="add()">
	</form>
	<table class="table">
		<tr>
			<td>商品编号</td>
			<td>商品名称</td>
			<td>英文名称</td>
			<td>商品种类</td>
			<td>商品品牌</td>
			<td>尺寸</td>
			<td>单价(元)</td>
			<td>数量</td>
			<td>标签</td>
			<td>图片</td>
		</tr>
		<c:forEach items="${page.list }" var="goods">
			<tr>
				<td>${goods.sid }</td>
				<td>${goods.sname }</td>
				<td>${goods.syname }</td>
				<td>${goods.type }</td>
				<td>${goods.brand }</td>
				<td>${goods.ssize }</td>
				<td>${goods.sprice }</td>
				<td>${goods.snum }</td>
				<td>${goods.sbq }</td>
				<td><img style="height: 50px;width: 50px" alt="失败" src="file/${goods.pic}"/></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="10" align="center">
				<button onclick="fenye(1)">首页</button>
				<button onclick="fenye(${page.prePage==0?1:page.prePage})">上一页</button>
				<button onclick="fenye(${page.nextPage==0?page.pages:page.nextPage})">下一页</button>
				<button onclick="fenye(${page.pages})">尾页</button>
				&nbsp;&nbsp;&nbsp;&nbsp;${page.pageNum }/${page.pages },共${page.total }条数据
			</td>
		</tr>
	</table>
</body>
</html>