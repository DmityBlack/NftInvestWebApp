<%-- 
    Document   : adminMainPage
    Created on : 18 сент. 2022 г., 19:59:59
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

                            <a href="<c:url value='adminMainPage' />">Список всех пользователей</a>
                            <a href="<c:url value='LettersAdminPage' />" >Запросы/Письма пользователей</a>
                            <a href="<c:url value='changeAdminUserStatus' />" >Изменение статуса пользователя/админа</a>
                            <!--<a href="<c:url value='mainPageContacts_Autorize' />" >Контакты</a>-->
                        </div>
                    </div>
                </div>
            </header>
            <main class="main">

                <section class="intro" id="intro">
                    <div class="container">
                        <div class="intro-inner">
                            <!--                        Основа-->
                            <h1>
                                Список всех пользователей
                                <jsp:include page="allUsersAdminPage.jsp" />
                            </h1>
                        </div>
                    </div>
                </section>
                
                       
            </main>
        </div>
        <script src="<c:url value='/static/js/app.js' />"></script>
        <script src="<c:url value='/static/js/popup.js' />"></script>
    </body>
</html>
