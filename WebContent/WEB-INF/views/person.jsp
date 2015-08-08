<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta content="IE=edge" http-equiv="X-UA-Compatible">
	<title>新增私人语料</title>
	<script type="text/javascript">
		function submitdata(){
			var username = document.getElementById("username").innerHTML;
			var user = document.getElementById("user").value;
			var selector = document.getElementById("selector").value;
			var question = document.getElementById("question").value;
			var content = document.getElementById("content").value;
			$.ajax({
			       type : "post",  
			       url : "lastSubmit",
			       data : {
		   			  "username":username,
		   			  "user":user,
		   			  "selector":selector,
		   			  "question":question,
		   			  "content":content
			   		},
			       success : function(msg) {
			           alert("提交成功");
			        }
			}); 
		}
		function valueChange(){
			var target=document.getElementById("target1");
			target.style.display="block";
			/* var name = document.getElementById("func1").value;
			alert("name = "+name); */
		}
		function addOne(){
			var content = document.getElementById("content").value;
			var addText = document.getElementById("addText").value+"　　";
			var func1 = document.getElementById("func1").value;
			var param1 = document.getElementById("param1").value;
			var params = param1.split("*");
			for(var i=0;i<params.length;i++){
				alert(params[i]);
			}
			var statement = addText+func1+param1+"\r\n";
			var lastTest = content+statement;
			$("#content").val(lastTest);
			var target=document.getElementById("target1");
			if(target.style.display=="block"){
				document.getElementById("param1").value = '';
				target.style.display="none";
			}
			
		}
	</script>
	</head>
<body>
<c:import url="menu.jsp" />
<form action="lastSubmit" method="post">
<div style="width:100%; height:100%; margin:0 auto;_display:inline-block;padding-top: 60px;">	
	<div style="widht:100%;height:10%;margin-right:auto;margin-left:auto;vertical-align:middle;">
		<h1>欢迎<label id="username">${sessionScope.username}</label></h1>
		用户名：<input id="user" type="text" name="user" value="guest901" />
		<select id="selector" name="selector" style="margin:10px" onchange="document.getElementById('form_submit_content').submit()">
			<option name="select" value="select_solo" DEFAULT_OPTION>nomsolo</option>
			<option name="select" value="select_rules" >规则</option>
			<option name="select" value="select_sessions" >session</option>
			<option name="select" value="select_stable_memory" >长期记忆库</option>
			<option name="select" value="select_short_memory" >短期记忆库</option>
		</select>
	</div>
	<div style="widht:100%;height:90%">
		<div style="width:40%; height:95%;float:right">
			<textarea id="question" style="width:100%;" wrap="off" name="question" value=""></textarea>
  			<input type="submit" value="测试" name="testText" style="width:25%;margin=10px;height:5%"/>
  			<br>
  			<label style="widht:100%;color:red">测试结果：<br></label>
  		</div> 
  		<div style="width:60%; height:95%">
			<textarea id="content" rows="3" cols="20" wrap="off" name="content" style="overflow:scroll;width:100%;height:200px;padding=3px;white-space:nowrap"></textarea>
			<div style="text-align:center;">
				<input type="button" value="提交" name="button" style="width:25%;margin=10px;height:5%" onclick="submitdata()"/>
				<!-- <input type="submit" value="提交" name="button" style="width:25%;margin=10px;height:5%"/> -->
				<input type="submit" value="更新" name="button" style="width:25%;margin=10px;height:5%"/>
			</div>
			<div style="border-style:solid;border-color:red;padding-left:20px;margin-top:10px;">
				<div>
					<input id="addText" type="text" placeholder="添加语料" style="width:50%;" />
					<select id="func1" name="function1" onchange="valueChange()">
					  <option value ="">选择函数</option>
					  <option value ="volvo">Volvo</option>
					  <option value ="saab">Saab</option>
					  <option value="opel">Opel</option>
					  <option value="audi">Audi</option>
					</select>
				</div>
				<div id="target1" style="display:none">
					<input id="param1" type="text" placeholder="填写函数参数,参数之间用*分隔" style="width:50%;" />
					<select id="func2" name="function2">
					  <option value ="">选择函数</option>
					  <option value ="volvo">Volvo</option>
					  <option value ="saab">Saab</option>
					  <option value="opel">Opel</option>
					  <option value="audi">Audi</option>
					</select>
				</div>
				<input type="button" value="新　增" onclick="addOne();"/>
			</div>
		</div> 
	</div>
</div>
</form>
</body>
</html>