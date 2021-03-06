<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/header.inc"%>

<h1>Her kan du gøre følgende:</h1>
<h3>Oversigt over sportskategorier</h3>

<form action="FrontController" method="post">
    <input type="hidden" name="target" value="managecategory">
    <table class="table">
        <c:forEach var="sportItems" items="${applicationScope.sportList}">
            <tr>
                <td>${sportItems.name}</td>
                <td>
                    <button type="submit" name="fjernknap" value="${sportItems.sports_id}" class="btn btn-primary">Fjern</button>
                    <button type="submit" name="retknap" value="${sportItems.sports_id}" class="btn btn-primary">Ret</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>

<ul>
    <li><a href="FrontController?target=redirect&destination=index">Gå til forssiden</a></li>
</ul>

<%@include file="../includes/footer.inc"%>