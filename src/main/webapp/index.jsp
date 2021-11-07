<%@ page import="FunctionLayer.Toppings" %>
<%@ page import="BMIUtil.Initializer" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.inc"%>

<%
    if(request.getServletContext().getAttribute("sportList") == null){
        request.getServletContext().setAttribute("sportList", Initializer.getSportList());
    }
    if(request.getServletContext().getAttribute("infoList") == null){
        request.getServletContext().setAttribute("infoList", Initializer.getInfoList());
    }
%>
<!-- i gang med opgave 23 -->
    <div class="row">

        <div class="col-md-4"></div>

        <div class="col-md-4">

            <p class="text-center"><a href="FrontController?target=redirect&destination=login">Log ind</a> </p>

            <h1 class="text-center">BMI beregner</h1>

            <form action="FrontController" method="post">
                <input type="hidden" name="target" value="resultat">
                <div class="form-group">
                    <label for="height">Indtast din højde i cm:</label>
                    <input type="text" class="form-control" id="height" aria-describedby="heightHelp" name="height">
                    <small id="heightHelp" class="form-text text-muted">Du skal være ærlig</small>
                </div>

                <div class="form-group">
                    <label for="weight">Indtast din vægt i kg:</label>
                    <input type="text" class="form-control" id="weight" name="weight">
                </div>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="kvinde" checked>
                    <label class="form-check-label" for="exampleRadios1">
                        Kvinde
                    </label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="mand">
                    <label class="form-check-label" for="exampleRadios2">
                        Mand
                    </label>
                </div>

                <div class="form-group mt-3">
                    <label for="exampleFormControlSelect1">Angiv din primære idræt:</label>
                    <select class="form-control" name="sport" id="exampleFormControlSelect1">
                        <c:forEach var="sportsItem" items="${applicationScope.sportList}">
                            <option value="${sportsItem.sports_id}">${sportsItem.name}</option>
                        </c:forEach>
                    </select>
                </div>

                <c:forEach var="infoItem" items="${applicationScope.infoList}">

                    <div class="form-check mt-2">
                        <input class="form-check-input" type="checkbox" name="info" value="${infoItem.info_id}" id="defaultCheck${infoItem.info_id}">
                        <label class="form-check-label" for="defaultCheck${infoItem.info_id}">
                           ${infoItem.name}
                        </label>
                    </div>

                </c:forEach>

<<<<<<< HEAD
                <div class="text-center mt-3">
=======
                <div class="text-center">
>>>>>>> c65d3bd38bf41c4a33a7d6b7e0d16faa25224b8b
                    <button type="submit" class="btn btn-primary">Beregn BMI</button>
                </div>
            </form>
<%--                from redirect.java--%>
            <h3>${requestScope.message}</h3>
            <ul>
                <c:forEach var="toppings" items="${toppings}">
                    <li>${toppings.name} koster ${toppings.price}kr</li>
                </c:forEach>
            </ul>

        </div><!--col-->

        <div class="col-md-4"></div>

    </div><!--row-->

<%@include file="includes/footer.inc"%>
