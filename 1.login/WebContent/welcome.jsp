<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <title>Hello JSP</title>
</head>

<body class="container">
  <div class="jumbotron">
  
    <h1>Welcome</h1>
    <p><%= request.getParameter("email") %>님 반갑습니다.</p>
    <a href="form.jsp" class="btn btn-primary">로그아웃</a>
    
  </div>
  
  <!-- Optional JavaScript -->
  <Script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <Script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>