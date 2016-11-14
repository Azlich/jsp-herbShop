<%-- 
    Document   : fruit
    Created on : Nov 13, 2016, 1:06:50 AM
    Author     : KN
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/animate.css">

        <title>Search Vegetable </title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header/header.jsp"/>
        <div class="container">
            <div class="row animated fadeIn">
                <form action="SearchDisease" method="post" class="form-inline">
                    <div class="form-group">

                        <label for="name">Disease Name : </label>
                        <input type="text" class="form-control" id="name" name="searchText" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-primary">Go</button>
                    <a href="typeHerb.jsp" <button type="button" class="btn btn-inverse">Back</button></a>
                </form>
            </div>

            <c:if test="${diseases != null}">
                <div class="row wow fadeIn">
                    <br>
                    <div class="row">
                        <form action="AddToCart" method="post">
                            <c:forEach items="${diseases}" var="d">

                                <div class="col-md-4 text-center">
                                    <img src='images/diseases/${d.diseId}.jpg' alt="pic" height="200" class="img-rounded"><br><br>
                                    <p> Name : ${d.diseName} </p>
                                    <p> Price :  <fmt:formatNumber value="${v.herbPrice}" type="currency" /> </p>
                                    <a href="ViewDiseasesDetail?id=${d.diseId}"><p class="btn btn-success "> Detail </p></a>
                                    <input type="hidden" name="type" value="vegetable"> 
                                </div>
                            </c:forEach>
                        </form>
                    </div>
                </c:if>   
            </div>  

            <script src="js/wow.min.js"></script>
            <script>
                new WOW().init();
            </script>
    </body>
</html>
