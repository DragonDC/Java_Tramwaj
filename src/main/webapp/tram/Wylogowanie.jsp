<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="StylTram.css" rel="stylesheet" type="text/css">
	<title>Insert title here</title>
</head>
<body>

	<div class="container" id="tresc_strony">
		<br /><br />
			<%session.invalidate();%>
			<center>Zostałeś wylogowany</center>
			
			<script type="text/javascript">
				setTimeout(function(){location.href="StronaStartowa.jsp";}, 2000);
			</script>
			
		<br /><br />
	</div>

</body>
</html>