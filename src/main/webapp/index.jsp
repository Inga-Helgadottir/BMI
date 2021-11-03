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
<!-- i gang med opgave 19 BMI forms: Initialisering af datastrukturer og dynamisk generering af formular (problem 16:00) -->
    <div class="row">

        <div class="col-md-4"></div>

        <div class="col-md-4">

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

                <div class="form-group">
                    <label for="exampleFormControlSelect1">Angiv din primære idræt:</label>
                    <select class="form-control" name="sport" id="exampleFormControlSelect1">
                        <c:forEach var="sportsItem" items="${applicationScope.sportList}">
<%------------------------------------------------------------FIX sports_is----------------------------------------------%>
                            <option value="${sportsItem.sports_is}">${sportsItem.name}</option>
                        </c:forEach>
<%--                        <option value="1">Jogging</option>--%>
<%--                        <option value="2">Fodbold</option>--%>
<%--                        <option value="3">Håndbold</option>--%>
<%--                        <option value="4">Gymnastik</option>--%>
<%--                        <option value="5">Yoga</option>--%>
<%--                        <option value="6">Andet</option>--%>
                    </select>
                </div>

                <c:forEach var="infoItem" items="${applicationScope.infoList}">

                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="info" value="${infoItem.info_id}" id="defaultCheck${infoItem.info_id}">
                        <label class="form-check-label" for="defaultCheck${infoItem.info_id}">
                           ${infoItem.name}
                        </label>
                    </div>

                </c:forEach>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="checkbox" name="info" value="2" id="defaultCheck2">--%>
<%--                    <label class="form-check-label" for="defaultCheck1">--%>
<%--                        Jeg har et sommerhus--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="checkbox" name="info" value="3" id="defaultCheck3">--%>
<%--                    <label class="form-check-label" for="defaultCheck1">--%>
<%--                        Jeg har et kæledyr--%>
<%--                    </label>--%>
<%--                </div>--%>

                <div class="text-center">
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
