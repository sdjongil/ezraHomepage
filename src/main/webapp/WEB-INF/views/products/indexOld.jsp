
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
    <div class="row">
        <c:forEach items="${productsList}" var="product">
            <div class="col-md-6 col-lg-4">
                <div class="box">
                    <div class="img-box" style="width: 100px">
                        <img src="${pageContext.request.contextPath}/resources/static/images/furnitures/${product.productImage}" alt="image">
                    </div>
                    <div class="detail-box">
                        <h5>
                            ${product.productName}
                        </h5>
                        <div class="price_box">
                            <h6 class="price_heading">
                                <span>${product.productPrice}</span>
                            </h6>
                            <a href="/product?id=${product.id}"> 상세 </a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>