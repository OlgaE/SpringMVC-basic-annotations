<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	
	<script type="text/javascript">
		function func(){
			var x = document.forms[0].length;
			document.getElementById("message2").innerHTML = "Using plain javaScript: " + x;
			
			var y = document.forms[0].elements[0].name;
			$("#message3").html("Using jquery: " + y);
			
			var z = document.formName.elements[0].name;
			$("#message4").html("Using name of the form this time." + z);
		}
		
		function validator(){
			if(document.newForm.box.checked){
				$("#message5").html("Yep, the checkbox is checked.");
			} else {
				$("#message5").html("Nope..");
			}
		}
		
	</script>
	
	<title>JavaScript practice)</title>
</head>
<body>

	<H3>Practicing forms with JavaScript:</H3>
	<form name="formName">
		Username: <input type="text" name="username"/>
		Password: <input type="password" />
		<input type="submit" value="Submit"/>
	</form>
	<span id="message"></span><br>
	
	<form>
		<input type="button" value="check" onClick="func();" />
	</form>
	<span id="message2"></span><br>
	<span id="message3"></span><br>
	<span id="message4"></span><br>
	
	<form name="newForm">
		<input type="checkbox" name="box" />
		<input type="button" value="Check if checked." onClick="validator();" />
	</form>
	<span id="message5"></span><br>
</body>
</html>