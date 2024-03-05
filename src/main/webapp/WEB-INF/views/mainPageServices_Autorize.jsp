<%-- 
    Document   : mainPage
    Created on : 16 авг. 2022 г., 13:04:48
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="google" content="notranslate">
        <!-- Title -->
        <title>DAD_Company</title>
        <!-- Styles -->

        <link href="<c:url value='/static/css/style.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/static/css/mainBlock.css' />" rel="stylesheet"></link>
        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@600&display=swap" rel="stylesheet">
    </head>

    <body>
        <div class="page">
            <header class="header lock-padding" id="header">
                <img src="<c:url value='/static/images/preimg.png' />" alt="" class="preimg">
                <div class="container">
                    <div class="header-inner">
                        <img src="<c:url value='/static/images/logo.png' />" alt="" class="logo">
                        <div class="sign-btns">
                            <a href="<c:url value='/' />" ><button
                                    class="cta outline">Выход</button></a>


                        </div>
                    </div>
                </div>
            </header>
            <header class="header lock-padding" id="header">


                <div class="container">
                    <div class="header-inner">

                        <div class="sign-btns">

                            <a href="<c:url value='mainPageAboutUs_Autorize' />">О НАС</a>
                            <a href="<c:url value='mainPageProjects_Autorize' />" >Проекты</a>
                            <a href="<c:url value='mainPageServices_Autorize' />" >Услуги</a>
                            <a href="<c:url value='mainPageContacts_Autorize' />" >Контакты</a>
                        </div>
                    </div>
                </div>
            </header>
            <main class="main">

                <div class="form-container">    
                    <form:form method="POST" modelAttribute="sendMessageService" class="form-horizontal">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-3 control-lable" for="serviceMessages"></label>
                                <div class="col-md-7">
                                    <form:input type="text" path="serviceMessages" id="serviceMessages" class="form-control input-sm" placeholder="Введите желаемую услугу сюда"/>
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

                <%--<jsp:include page="ServiceData.jsp" />--%>

            </main>
        </div>

    </body>
</html>
