<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
class Player {
    Integer number;
    String name;
    String position;
    public Player(Integer number, String name, String position) {
        this.number = number;
        this.name = name;
        this.position = position;
    }
}
%>
<%!
	int[] numbers = {1, 2, 3, 4, 5, 6};
	String[] names = {"슈테겐", "세메두", "피케", "라키티치", "부스케츠", "수아레스"};
	String[] positions = {"GK", "DF", "DF", "MF", "MF", "MF"};
	Player[] players = new Player[numbers.length];
%>
<%
	for (int i = 0; i < numbers.length; i++) {
 	   players[i] = new Player(numbers[i], names[i], positions[i]);
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<title>Hello JSP</title>
</head>
<body class="container">
	<div class="jumbotron">
		<h1>선수</h1>
	</div>
	<table class="table table-striped">
		<thead class="thead-dark">
			<tr>
				<th>번호</th>
				<th>포지션</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
			<!-- 반복문과 표현을 사용하여 테이블을 완성하시오. -->
			<% for(int i=0;i<players.length;i++){%>
			<tr>
				<td><%= players[i].number %></td>
				<td><%= players[i].position %></td>
				<td><%= players[i].name %></td>
			</tr>
			<%}%>
		</tbody>
	</table>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<Script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<Script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<Script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>