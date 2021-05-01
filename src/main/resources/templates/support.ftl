<#import "/spring.ftl" as spring/>
<#import "/Header/integra.ftl" as integra/>
<!DOCTYPE HTML>
<html>
<head>
    <title>Привет, я твоя поддержка</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <@integra.head />
</head>
<@integra.sidebar>
<body>
    <div class = container mt-5 mb-20>
        <h1>Привет, я твоя поддержка</h1>
        <div class = "alert alert-info mt-2">
        <#list Stat as el>
            <h3>${el.title}</h3>
            <p>${el.anons}</p>
            <a href="/support/${el.id}" class="btn btn-warning">Детальнее</a>
        </#list>
        </div>
    </div>
    <#include "*/Header/footer.ftl" parse = true>
</body>
</@integra.sidebar>
</html>