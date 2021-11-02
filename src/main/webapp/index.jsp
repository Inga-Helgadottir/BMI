<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.inc"%>

    <div class="row">

        <div class="col-md-4"></div>

        <div class="col-md-4">

            <h1 class="text-center">BMI beregner</h1>

            <form action="FrontController" method="post">

                <input type="hidden" name="target" value="resultat">
                <div class="form-group">
                    <label for="height">Indtast din højde i cm:</label>
                    <input type="email" class="form-control" id="height" aria-describedby="heightHelp">
                    <small id="heightHelp" class="form-text text-muted">Du skal være ærlig</small>
                </div>
                <div class="form-group">
                    <label for="weight">Indtast din vægt i kg:</label>
                    <input type="password" class="form-control" id="weight">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Beregn BMI</button>
                </div>
            </form>

        </div><!--col-->

        <div class="col-md-4"></div>

    </div><!--row-->

<%@include file="includes/footer.inc"%>
