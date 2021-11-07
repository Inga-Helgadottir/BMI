<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/header.inc"%>

<h3>Retkategorier</h3>

<form action="FrontController" method="post">
    <input type="hidden" name="target" value="managecategory">
    <input type="hidden" name="action" value="opdater">
    <input type="hidden" name="sportid" value="${requestScope.sport.sports_id}">

    <div class="form-group">
        <label for="kategori">Ret kategoriteksten:</label>
        <input type="text" class="form-control" id="kategori" value="${requestScope.sport.name}" name="kategori">
    </div>

    <button type="submit" name="opdater" class="btn btn-primary">Opdater</button>
</form>

<ul>
    <li><a href="FrontController?target=redirect&destination=index">Gå til forssiden</a></li>
</ul>

<%@include file="../includes/footer.inc"%>