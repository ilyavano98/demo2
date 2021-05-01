<#import "/spring.ftl" as spring/>
<#import "/Header/integra.ftl" as integra/>
<!DOCTYPE HTML>
<html>
<head>
    <title>Редактирование статьи</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <@integra.head />
</head>
<@integra.sidebar>
<body>
<div class = container mt-5 mb - 2>
    <h1>Редактирование статьи</h1>
    <form method="post">
        <#list modelstat as el>
        <input type = "text" value = ${el.title} name = "title" placeholder="Введите название статьи" class="form-control"/><br>
        <input type = "text" value = ${el.anons} name = "Anons" placeholder="Введите аннотацию к статье" class="form-control"/><br>
        <textarea name = "full_text" placeholder="Введите текст статьи" class="form-control">${el.full_text}</textarea><br>
        <button type="submit" class = "btn btn-success">Обновить</button>
        </#list>
    </form>
</div>
</body>
</@integra.sidebar>
</html>