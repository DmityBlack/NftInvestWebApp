<%-- 
    Document   : autorize
    Created on : 22 авг. 2022 г., 12:44:19
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

                            <a href="#popup2" class="popup-link" data-pop-link="sign-up"><button
                                    class="cta inline">Регистрация</button></a>
                        </div>
                    </div>
                </div>
            </header>
            <header class="header lock-padding" id="header">


                <div class="container">
                    <div class="header-inner">
                        <div class="sign-btns">
                            <a href="<c:url value='/' />">На главную страницу</a>
                        </div>

                    </div>
                </div>
            </header>
            <main class="main">

                <section class="intro" id="intro">
                    <div class="container">
                        <div class="intro-inner">
                            <!--                        Основа-->
                            <h1>Для того, чтобы продолжить - Зарегистрируйтесь!</h1>
                        </div>
                    </div>
                </section>




                <div id="popup" class="popup" data-pop-window="sign-up">
                    <div class="popup-content">
                        <div class="popup-inner">
                            <div class="main-popup-nav">
                                <h3 class="popup-title">Регистрация</h3>
                                <div class="popup-close">
                                    <svg width="15" height="15" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M2 2L27 27" stroke="white" stroke-width="4" stroke-linecap="round" />
                                    <path d="M27 2L2 27" stroke="white" stroke-width="4" stroke-linecap="round" />
                                    </svg>
                                </div>
                            </div>
                            <form:form method="POST" modelAttribute="user" class="form-horizontal">

                                <div class="main-popup-input-data more">
                                    <div class="form-group col-md-12">
                                        <label class="col-md-3 control-lable" for="firstName"></label>
                                        <div class="col-md-7">
                                            <form:input type="text" path="firstName" id="firstName" class="main-popup-input" placeholder="Имя"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-3 control-lable" for="lastName"></label>
                                        <div class="col-md-7">
                                            <form:input type="text" path="lastName" id="lastName" class="main-popup-input" placeholder="Фамилия"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-3 control-lable" for="email"></label>
                                        <div class="col-md-7">
                                            <form:input type="text" path="email" id="email" class="main-popup-input" placeholder="email"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-3 control-lable" for="phoneNumber"></label>
                                        <div class="col-md-7">
                                            <form:input type="text" path="phoneNumber" id="phoneNumber" class="main-popup-input" placeholder="Номер телефона"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-3 control-lable" for="password"></label>
                                        <div class="col-md-7">
                                            <form:input type="text" path="password" id="password" class="main-popup-input" placeholder="Придумайте пароль"/>
                                        </div>
                                    </div>    

                                </div>
                                <div class="main-popup-help">
                                    <p class="main-popup-text">Если вы уже зарегистрированны, вы можете войти в свой аккаунт
                                        <a href="<c:url value='/' />"><span>здесь</span></a>!
                                    </p>
                                </div>
                                <div class="main-popup-submit">
                                    <button type="submit" class="main-popup-button">Зарегистрироваться</button>
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
