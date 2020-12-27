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
<html>
<head>
    <title>user</title>
</head>
<body>
    <table width="500px" align="center" border="1px">
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
            <c:forEach items="${requestScope.users}" var="user">
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
</body>
</html>
