<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

<script>
	var response = '{"result":true,"count":1}';

	function start(){
		var response = '{"result":true,"count":1}';
		var object = JSON.parse(response);
		alert(object.count);
		}
	
	function start1(){
		var url = "http://localhost:8080/SpringMVC4/get-person";
		$.getJSON(url, function (person) {
		    alert(person.name);
	}
</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple example</title>
</head>
<body>
	<h2>Hello)) Testing JSON parsing here..</h2>
	<h3>vot)</h3>

	<form id="ajaxRestForm" name="ajaxRestForm"
		  action="/com/demo/datacontrollers/ajaxJsonRequest" 
		  method="post">
		  
		<input type="button" value="JSON parsing" onclick="start1()" />
		
	</form>
	<span id="jsonMessage"></span>

</body>
</html>