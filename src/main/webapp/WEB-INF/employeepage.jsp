<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/header.inc"%>

        <h1>Hello ${sessionScope.email} </h1>

        You are now logged in as a EMPLOYEE of our wonderful site.

<h1>Her kan du gøre følgende:</h1>
<ul>
    <li><a href="FrontController?target=redirect&destination=kategorier">Rette kategorier</a></li>
    <li><a href="FrontController?target=redirect&destination=index">Gå til forssiden</a></li>
</ul>

<%@include file="../includes/footer.inc"%>