<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>detail</title>
    <style>

    </style>
</head>
<body>
<div>
    <jsp:include page="/resources/templates/navbar.html" />
</div>
<div style="display: block">
    <table>
        <tr>
            <th>id</th>
            <td>${member.id}</td>
        </tr>
        <tr>
            <th>email</th>
            <td>${member.memberEmail}</td>
        </tr>
        <tr>
            <th>password</th>
            <td>${member.memberPassword}</td>
        </tr>
        <tr>
            <th>name</th>
            <td>${member.memberName}</td>
        </tr>
        <tr>
            <th>age</th>
            <td>${member.memberAge}</td>
        </tr>
        <tr>
            <th>mobile</th>
            <td>${member.memberMobile}</td>
        </tr>
    </table>
</div>

</body>
<script>
</script>
</html>