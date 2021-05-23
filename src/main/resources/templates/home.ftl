<#import "/spring.ftl" as spring/>
<#import "/Header/integra.ftl" as integra/>
<!DOCTYPE HTML5>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>dfsv</title>
    <script type="text/javascript" src="js/less.lib.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="/js/script_toollib.js"></script>
    <link href="/css/style_toollib.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <@integra.head />
</head>
<@integra.sidebar>
<body>
<h1 class="red_text"> ${username} </h1>
<a href="#" <button aria-label="Привет, я твоя ссылка!"data-microtip-position="bottom-right" role="tooltip">Ссылка</a>
<button aria-label="Привет, я твоя кнопка!"data-microtip-position="bottom-right" role="tooltip">я кнопка</button>
<menu>
  <command onclick="alert('Первая команда')"  label="Первая команда"/>
  <command onclick="alert('Вторая команда')" label="Вторая команда"/>
</menu>
<#include "*/Header/footer.ftl" parse = true>
</body>
</@integra.sidebar>
</html>