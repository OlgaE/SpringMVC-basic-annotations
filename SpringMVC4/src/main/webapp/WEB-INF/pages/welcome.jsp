<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
</head>
<body>
	<h2>Hello))</h2>
	<h3>http://localhost:8080/SpringMVC4/</h3>
	<h4><a href="hellopage.htm">hellopage.htm</a></h4>
	<h4><a href="to-new-page">Click here</a></h4>
	<h4><a href="to-showdate-page">Show the time</a></h4>
	
	<h2>Using controller "ControllerWithData.java":</h2>
	<h4><a href="to-data-page">controller with data</a></h4>
	<h4><a href="to-name-page">show name</a></h4>
	
	<h2>Using @ResponseBody annotation:
	<a href="get-person"><input type="button" value="get an object of Person class" /></a></h2>
	
	<h2>Testing Ajax:</h2>
	<form action="http://localhost:8080/SpringMVC4/to-ajax-page" method="get">
		<input type="submit" value="ajax.." />
	</form>
	
	<h2>Testing JSON.parse:</h2>
	<h4><a href="to-json-page">JSON..</a></h4>
	
	<h2>Testing javascript library:</h2>
	<h4><a href="to-jslibrary-page">library</a></h4>
	
	<h2>Testing @Component annotation:</h2>
	<h4><a href="to-name-page">show name</a></h4>
</body>
</html>