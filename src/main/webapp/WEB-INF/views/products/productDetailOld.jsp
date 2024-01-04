
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css" />
</head>
<body>
    <div>
        <jsp:include page="/resources/templates/navbar.html" />
    </div>
    <div>
        <table>
            <tr>
                <th>id</th>
                <td>${product.id}</td>
            </tr>
            <tr>
                <th>Name</th>
                <td>${product.productName}</td>
            </tr>
            <tr>
                <th>Price</th>
                <td>${product.productPrice}</td>
            </tr>
            <tr>
                <th>Made in</th>
                <td>${product.productMade}</td>
            </tr>
            <tr>
                <th>Brand</th>
                <td>${product.productBrand}</td>
            </tr>
        </table>
    </div>
    <div>
        <form id="inquiryForm" action="" method="post">
            <input type="hidden" name="productId" value="${product.id}">
            <input id="inquiryIdInput" type="hidden" name="inquiryId" value="">
            <input id="writer" type="text" name="userId" placeholder="작성자">
            <textarea id="content" name="inquiryContent" cols="30" rows="10" placeholder="내용을 입력하세요"></textarea>
            <input type="submit" id="submitBtn" value="작성">
        </form>
        <button onclick="cancel()">취소</button>
    </div>
    <div>
        <table>
            <tr>
                <th>게시판번호</th>
                <th>글쓴이</th>
                <th>내용</th>
                <th>날짜</th>
                <th>삭제</th>
                <th>수정</th>
            </tr>
            <c:forEach items="${inquiries}" var="inquiry">
                <tr id="${inquiry.inquiryId}">
                    <td>${inquiry.inquiryId}</td>
                    <td>${inquiry.userId}</td>
                    <td>${inquiry.inquiryContent}</td>
                    <td>${inquiry.inquiryDate}</td>
                    <td>
                        <button onclick="deleteInquiry('${inquiry.inquiryId}','${inquiry.productId}')">삭제</button>
                    </td>
                    <th>
                        <button onclick="updateInquiry('${inquiry.inquiryContent}','${inquiry.userId}',
                                '${inquiry.inquiryId}')">수정</button>
                    </th>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
<script>
    let correction = false;
    let writer =  document.getElementById("writer")

    function deleteInquiry(inquiryId, productId){
        location.href = "product/inquiry/delete?inquiryId="+inquiryId+"&productId=" + productId;
    }
    function updateInquiry(content, userId, inquiryId){
        console.log(inquiryId)
        correction = true;
        writer.value = userId;
        writer.readOnly = true;
        document.getElementById("content").innerText= content
        document.getElementById("inquiryIdInput").value = inquiryId
    }

    let submitButton = document.getElementById("submitBtn");
    let inquiryForm = document.getElementById("inquiryForm");
    submitButton.addEventListener("click", function() {
        if(correction) {
            inquiryForm.action = "/product/inquiry/update";
            correction = false;
            writer.readOnly = false;
        } else {
            inquiryForm.action = "/product/inquiry/save";
        }
    });
    function cancel(){
        correction = false;
        writer.readOnly = false;
        writer.value = ""
        document.getElementById("content").innerText= ""
    }
</script>
</html>