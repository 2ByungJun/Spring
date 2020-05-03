<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
class User {
    private String email;
    private String password;
    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }
    public boolean check(String email, String password) {
        // 이메일이 같지않다면?
        if (!email.equalsIgnoreCase(this.email))
            return false;
        // 비밀번호가 다르다면?
        if (!password.equals(this.password))
            return false;
        // 모두 통과했다면?
        return true;
    }
}
%>
<%
/* 1. 폼 데이터를 받아오시오. (구글링: jsp request form 값 받기) */
String inputEmail = request.getParameter("email");
String inputPassword = request.getParameter("password");
// 등록된 사용자 데이터.
String[] emails = {"admin@email.com", "tester@email.com", "user@email.com"};
String[] passwords = {"admin123", "tester123", "user123"};
User[] users = new User[emails.length];
for (int i = 0; i < emails.length; i++) {
    users[i] = new User(emails[i], passwords[i]);
}
// 폼 데이터 정보가 등록된 사용자들 중 있는지 검사.
for (User u: users) {
    // 이메일과 패스워드가 일치한다면?
    if (u.check(inputEmail, inputPassword)) {
        /* 2. welcome.jsp로 이동시키시오. (구글링: jsp response 페이지 redirect)*/
        response.sendRedirect("welcome.jsp?email=" + inputEmail);
        return;
    } 
}
// 사용자 인증을 못받았다면?
/* 3. form.jsp 페이지로 이동시키시오. (구글링: jsp response 페이지 redirect) */
response.sendRedirect("form.jsp?error=login-failed");
%>