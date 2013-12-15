<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	
	<script type="text/javascript">
		function start(){
			$("#message").text("'start()' function worked. The name is: " + obj.name);
			}
		
		function makeEmpty(){
			$("#message").text("");
		}
		
		var obj = new Object();
		obj.name="Tom Larsen";
		obj.method = function(){
			$("#message").text("Method called.");
		};
		
		function person(name, age){
			this.name = name;
			this.age = age;
		}
		var tim = new person(Tim, 14);
		
		tom = {name: "Tom Larsen", age: 19};
	</script>
	
	<title>JavaScript practice)</title>
</head>
<body>

	<H3>Practicing JavaScript:</H3>
	<form>
		<input type="button" value="simple bbutton" onClick="obj.method();" />
	</form>
	<span id="message"></span><br>
	
	<a href="http://facebook.com" onMouseOver="start();" onMouseOut="makeEmpty();">Hover over me!</a>
</body>
</html>