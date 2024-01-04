<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>login</title>

</head>
<body>
<div>
</div>
<div>
    <form id="loginForm" action="/member/login" method="post">
        <input type="text" name="memberEmail" placeholder="이메일">
        <input type="text" name="memberPassword" placeholder="비밀번호">
        <input type="submit" value="로그인">
    </form>
</div>

</body>
<script>
    let submitButton = document.getElementById("submitBtn");
    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault();
        let formData = new FormData(this);
        fetch(this.action, {
            method : this.method,
            body : formData
        })
        .then(response => {
            if (response.status === 401) { //401 : 인증 실패 에러코드
                return window.location.href = "/member/save";
            }else if(response.status === 200){
                return response.text();
            }
            throw new Error('Login failed with status: ' + response.status);
        })
        .then(url => {
            window.location.href = url;
        })
        .catch(error =>{
            console.error('loginError:', error);
        });
    });
</script>
</html>