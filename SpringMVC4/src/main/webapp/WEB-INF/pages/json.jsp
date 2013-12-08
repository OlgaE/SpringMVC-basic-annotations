<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- <script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript">google.load("jquery", "1.3.2");</script> -->

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Simple example</title>
		
		<script type="text/javascript"
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
			
		<script type="text/javascript">
		
			function start(){
				var response = '{"result":true,"count":1}';
				var object = JSON.parse(response);
				$("#jsonMessage").text(object.count);
				} 
			
			function start1(){
				var url = "http://localhost:8080/SpringMVC4/get-person";
				$.getJSON(url, function (person) {
					$("#jsonMessage").text(person.name);
				});
			}
		</script>
	</head>
	
<body>
	<h2>Hello)) Testing JSON parsing here..</h2>

	<input type="button" value="JSON parsing" onclick="start()" /> 
	<br>
	<input type="button" value="JSON parsing (from another page)" onclick="start1()" />
	<br>
	<span id="jsonMessage"></span>

</body>
</html>