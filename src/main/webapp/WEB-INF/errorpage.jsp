<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/header.inc"%>

<div class="alert alert-danger" role="alert">
    <c:if test = "${requestScope.error!= null}" >
       <h2>Der opstod en fejl ! </h2>
        ${requestScope.error}
    </c:if>
</div>

<p><a href="FrontController?target=redirect&destination=index">Gå til forssiden</a></p>

<%@include file="../includes/footer.inc"%>
