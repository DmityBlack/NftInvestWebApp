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
                            <a href="#popup1" class="popup-link" data-pop-link="sign-in"><button
                                    class="cta outline">Вход/Регистрация</button></a>

                        </div>
                    </div>
                </div>
            </header>
            <header class="header lock-padding" id="header">


                <div class="container">
                    <div class="header-inner">

                        <div class="sign-btns">

                            <a href="<c:url value='mainPageAboutUs' />">О НАС</a>
                            <a href="<c:url value='mainPageProjects' />" >Проекты</a>
                            <a href="<c:url value='mainPageServices' />" >Услуги</a>
                            <a href="<c:url value='mainPageContacts' />" >Контакты</a>
                        </div>
                    </div>
                </div>
            </header>
            <main class="main">

                <section class="intro" id="intro">
                    <div class="container">
                        <div class="intro-inner">
                            <!--                        Основа-->
                            <h1>Здравствуйте! Войдите или зарегистрируйтесь, чтобы воспользоваться услугами.</h1>
                        </div>
                    </div>
                </section>
                <div id="popup" class="popup" data-pop-window="sign-in">
                    <div class="popup-content">
                        <div class="popup-inner">
                            <div class="main-popup-nav">
                                <h3 class="popup-title">Войти</h3>
                                <div class="popup-close">
                                    <svg width="15" height="15" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M2 2L27 27" stroke="white" stroke-width="4" stroke-linecap="round" />
                                    <path d="M27 2L2 27" stroke="white" stroke-width="4" stroke-linecap="round" />
                                    </svg>

                                </div>
                            </div>
                            <form:form method="POST" modelAttribute="userSignUp" class="form-horizontal">
                                <div class="main-popup-social">
                                    <div class="main-popup-social-inner">
                                        <div class="social-img-wrapper">
                                            <img src="<c:url value='/static/images/google.png' />" alt="" class="popup-social-img">
                                        </div>
                                        <div class="social-img-wrapper">
                                            <img src="<c:url value='/static/images/inst.png' />" alt="" class="popup-social-img">
                                        </div>
                                        <div class="social-img-wrapper">
                                            <img src="<c:url value='/static/images/vk.png' />" alt="" class="popup-social-img">
                                        </div>
                                        <div class="social-img-wrapper">
                                            <img src="<c:url value='/static/images/facebook.png' />" alt="" class="popup-social-img">
                                        </div>
                                    </div>
                                </div>
                                <div class="main-popup-input-data">
                                    

                                    <div class="form-group col-md-12">
                                        <label class="col-md-3 control-lable" for="logEmail"></label>
                                        <div class="col-md-7">
                                            <form:input type="text" path="logEmail" id="logEmail" class="main-popup-input" placeholder="email"/>
                                        </div>
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label class="col-md-3 control-lable" for="password"></label>
                                        <div class="col-md-7">
                                            <form:input type="text" path="password" id="password" class="main-popup-input pass-id" placeholder="Пароль"/>
                                        </div>
                                    </div>

                                </div>
                                <div class="main-popup-help">
                                    <a href="#popup_2" class="main-popup-text popup-link">Забыли пароль?</a>
                                    <br>
                                    <p class="main-popup-text">Если вы еще не зарегистрированны вы можете сдалать это
                                        <a href="<c:url value='registration' />"><span>здесь</span></a>!
                                    </p>
                                </div>
                                <div class="main-popup-submit">
                                    <button type="submit" class="main-popup-button">Войти</button>
                                </div>
                            </form:form>

                        </div>
                    </div>
                </div>
                       
            </main>
        </div>
        <script src="<c:url value='/static/js/app.js' />"></script>
        <script src="<c:url value='/static/js/popup.js' />"></script>
    </body>
</html>
