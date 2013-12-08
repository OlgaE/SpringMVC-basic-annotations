<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" ></script>
<script>

// jQuery method:
function start(){
	
	var methodURL = "http://localhost:8080/SpringMVC4/ajaxJsonRequest";
	$.ajax({
		type: "GET",
		url: methodURL,
		data: $("#ajaxRestForm").serialize(),
		success: function(data){
			$("#jsonMessage").text(data);
			},
		error: function(e){}
	});
}

</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple example</title>
</head>
<body>
	<h2>Hello)) Testing ajax here..</h2>
	<h3>vot)</h3>
	
	<form id="ajaxRestForm" name="ajaxRestForm" 
		  action="http://localhost:8080/SpringMVC4/ajaxJsonRequest" method="post">
		  
		<input type="text" name="message" id="message" />
		<input type="button" value="AJAX REQUEST" onclick="start()" />
		
	</form>
	<span id="jsonMessage"></span>
	
</body>
</html>