<%-- 
    Document   : ServiceData
    Created on : 29 авг. 2022 г., 2:07:17
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/static/css/custom.css' />" rel="stylesheet"></link>

    </head>


    <body>
        <div class="form-container">    
            <form:form method="POST" modelAttribute="sendMessageService" class="form-horizontal">
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="serviceMessages"></label>
                        <div class="col-md-7">
                            <form:input type="text" path="serviceMessages" id="serviceMessages" class="form-control input-sm" placeholder="Опишите услугу здесь"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">    
                        <input type="submit" value="Отправить" class="btn btn-primary btn-sm"/>
                    </div>
                </div> 
            </form:form>
        </div>

    </body>
</html>    












