<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>list</title>
</head>
<body>
<div>
    <jsp:include page="/resources/templates/navbar.html" />
</div>
<div style="display: block">
    <table>
        <tr>
            <th>id</th>
            <th>email</th>
            <th>password</th>
            <th>name</th>
            <th>age</th>
            <th>mobile</th>
            <th>조회</th>
            <th>삭제</th>
        </tr>
        <!--리스트를 반복문으로 실행하는 코드-->
        <c:forEach items="${memberList}" var="member">
            <tr>
                <td>${member.id}</td>
                <td>
                    <a href="/member?id=${member.id}">${member.memberEmail}</a>
                </td>
                <td>${member.memberPassword}</td>
                <td>${member.memberName}</td>
                <td>${member.memberAge}</td>
                <td>${member.memberMobile}</td>
                <td>
                    <a href="/member?id=${member.id}">조회</a>
                </td>
                <td>
                    <button onclick="deleteMember('${member.id}')">삭제</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
<script>
    const deleteMember = (id) => {
        location.href = "/member/delete?id="+id;
    }
</script>
</html>