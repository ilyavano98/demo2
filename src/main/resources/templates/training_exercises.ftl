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
    <div class = "alert alert-info mt-2">
        <#list exercises as el>
            <h3>${el.title}</h3>
            <p>${el.anons}</p>
            <a href="/training_exercises/${el.id}" class="btn btn-warning">Детальнее</a>
        </#list>
    </div>
    <#include "*/Header/footer.ftl" parse = true>
</body>
</@integra.sidebar>
</html>