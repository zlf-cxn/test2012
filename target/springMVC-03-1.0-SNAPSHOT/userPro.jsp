<%--
  Created by IntelliJ IDEA.
  User: CxnZlf2015
  Date: 2020/11/26
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <title>bootstrap-分页</title>
</head>
<body>
    <table class="table table-bordered table-striped table-dark">
        <thead>
            <tr>
                <th>id</th>
                <th>username</th>
                <th>password</th>
                <th>sex</th>
                <th>registTime</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${requestScope.data.list}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.sex}</td>
                    <td><fmt:formatDate value="${user.registTime}" pattern="yyyy-MM-dd"/> </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <nav aria-label="...">
        <ul class="pagination justify-content-center">
            <c:if test="${requestScope.data.hasPreviousPage}">
                <li class="page-item">
                    <a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${requestScope.data.prePage}" tabindex="-1" aria-disabled="true">Previous</a>
                </li>
            </c:if>
            <c:if test="${!requestScope.data.hasPreviousPage}">
                <li class="page-item disabled">
                    <a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${requestScope.data.prePage}" tabindex="-1" aria-disabled="true">Previous</a>
                </li>
            </c:if>
           <%-- <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item active" aria-current="page">
                <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
            </li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
            <c:forEach begin="1" end="${requestScope.data.pages}" var="pageNum">
                <c:if test="${pageNum==requestScope.data.pageNum}">
                    <li class="page-item active"><a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${pageNum}">${pageNum}</a></li>
                </c:if>
                <c:if test="${pageNum!=requestScope.data.pageNum}">
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${pageNum}">${pageNum}</a></li>
                </c:if>
            </c:forEach>
            <c:if test="${requestScope.data.hasNextPage}">
                <li class="page-item">
                    <a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${requestScope.data.nextPage}">Next</a>
                </li>
            </c:if>
            <c:if test="${!requestScope.data.hasNextPage}">
                <li class="page-item disabled">
                    <a class="page-link" href="${pageContext.request.contextPath}/users?pageNum=${requestScope.data.nextPage}">Next</a>
                </li>
            </c:if>
        </ul>
    </nav>
</body>
</html>
