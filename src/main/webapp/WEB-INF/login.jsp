<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/header.inc"%>

        <table>
            <tr><td>Login</td>
                <td>
                    <form name="login" action="FrontController" method="POST">
                        <input type="hidden" name="target" value="login">
                        Email:<br>
                        <input type="text" name="email" placeholder="someone@nowhere.com">
                        <br>
                        Password:<br>
                        <input type="password" name="password" placeholder="sesam">
                        <br>
                        <input type="submit" value="Submit">
                    </form>
                </td>
                <td>Or Register</td>
                <td>
                    <form name="register" action="FrontController" method="POST">
                        <input type="hidden" name="target" value="register">
                        Email:<br>
                        <input type="text" name="email" placeholder="someone@nowhere.com">
                        <br>
                        Password:<br>
                        <input type="password" name="password1" placeholder="sesam">
                        <br>
                        Retype Password:<br>
                        <input type="password" name="password2" placeholder="sesam">
                        <br>
                        <input type="submit" value="Submit">
                    </form>
                </td>
            </tr>
        </table>

        <c:if test = "${requestScope.error!= null}" >
           <h2>Error ! </h2>
            ${requestScope.error}
        </c:if>
<%@include file="../includes/footer.inc"%>
