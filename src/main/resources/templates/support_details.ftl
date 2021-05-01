<#import "/spring.ftl" as spring/>
<#import "/Header/integra.ftl" as integra/>
<!DOCTYPE HTML>
<html">
<head>
    <title>Полноное содержимое статьи</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <@integra.head />
</head>
<@integra.sidebar>
<body>
<div class = container mt-5 mb-20 >
    <div class = "alert alert-info mt-2">
    <#list modelstat as el>
        <h1>${el.title}</h1>
        <p>"${el.anons}</p>
        <p>${el.full_text}</p>
        <p><b>Просмотры:</b> ${el.views}<p/>
        <a href="/support/${el.id}/edit" class="btn btn-success">Редактировать</a>
        <a href="/support/${el.id}/delete" class="btn btn-success">Удалить</a>
    </#list>
    </div>
</div>
</body>
</@integra.sidebar>
</html>