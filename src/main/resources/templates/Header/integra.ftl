<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sidebars/">

<#macro head>
    <div class="d-flex flex-column flex-md-row align-items-center pb-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
            <img src="https://tefalad.hu/media/catalog/product/cache/3/image/9df78eab33525d08d6e5fb8d27136e95/b/o/bodybuilder9.jpg" width="50" height="40" class="me-2" viewBox="0 0 118 94" role="img">
            <span class="fs-4">Мой фитнес</span>
        </a>

        <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
            <a class="me-3 py-2 text-dark text-decoration-none" href="#">Программа</a>
            <a class="me-3 py-2 text-dark text-decoration-none" href="#">Время</a>
            <a class="me-3 py-2 text-dark text-decoration-none" href="/support_new_Post">Добавить статью</a>
            <a class="me-3 py-2 text-dark text-decoration-none" href="/support">Поддержка</a>
            <#if username == "anonymousUser">
                <a class="me-3 py-2 text-dark text-decoration-none" href="/login">Войти</a>
                <a class="me-3 py-2 text-dark text-decoration-none" href="/registration">Зарегистрироваться</a>
            <#else>
                <form action="/logout" method="post" class="me-3 py-2 text-dark text-decoration-none">
                    <button class="text-dark text-decoration-none btn" value="Sign Out">Выйти</button>
                    <!--<input type = "submit" class="me-3 py-2 text-dark text-decoration-none" value="Sign Out"/>-->
                </form>
            </#if>

        </nav>
    </div>
</#macro>
<#macro sidebar>
<link rel="stylesheet" href = "/css/style.css?9">
<script type="text/javascript" src="/js/sidebars.js"></script>
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="/training_exercises">Упражнения</a>
        <a href="#">Планирование</a>
        <a href="#">Статистика</a>
        <a href="#">Сервис</a>
        <a href="/admin">Администратору</a>
    </div>

    <!-- Используйте любой элемент, чтобы открыть sidenav -->
    <span type = "submit" onclick="openNav()">open</span>

    <!-- Добавьте весь контент страницы внутри этого div, если вы хотите, чтобы боковая навигация выдвигала контент страницы вправо (не используется, если вы хотите, чтобы sidenav находился сверху страницы -->
    <div id="main">
        <#nested>
    </div>
</#macro>