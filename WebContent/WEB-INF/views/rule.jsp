<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<title>新增规则语料</title>
	</head>
<body>
<c:import url="menu.jsp" />
<div style="width:100%; height:100%; margin:0 auto;_display:inline-block;padding-top: 60px;">	
	<div style="widht:100%;height:10%;margin-right:auto;margin-left:auto;vertical-align:middle;">
		用户名：<input type="text" name="user" value="guest901" />
		<select name="selector" style="margin:10px" onchange="document.getElementById('form_submit_content').submit()">
			<option name="select" value="select_solo" DEFAULT_OPTION>nomsolo</option>
			<option name="select" value="select_rules" >规则</option>
			<option name="select" value="select_sessions" >session</option>
			<option name="select" value="select_stable_memory" >长期记忆库</option>
			<option name="select" value="select_short_memory" >短期记忆库</option>
		</select>
	</div>
	<div style="widht:100%;height:90%">
		<div style="width:40%; height:95%;float:right">
			<textarea style="width:100%;" wrap="off" name="question"></textarea>
  				<input type="submit" value="测试" name="button" style="width:25%;margin=10px;height:5%"/>
  				<br>
  				<label style="widht:100%;color:red">测试结果：<br></label>
  			</div> 
  			<div style="width:60%; height:95%">
			<textarea wrap="off" name="content" style="overflow:scroll;width:100%;height:90%;padding=3px;white-space:nowrap"></textarea>
			<div style="text-align:center;">
				<input type="submit" value="提交" name="button" style="width:25%;margin=10px;height:5%"/>
				<input type="submit" value="更新" name="button" style="width:25%;margin=10px;height:5%"/>
			</div>
		</div> 
	</div>
</div>
</body>
</html>