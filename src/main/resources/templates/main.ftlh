<html>

<body>
<div>
    <body>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="{{_csrf.token}}" />
        <input type="submit" value="Sign Out"/>
    </form>
    </body>

    <form method="post">
        <input type="text" name="text" placeholder="Введите сообщение" />
        <input type="text" name="tag" placeholder="tag">
        <input type="hidden" name="_csrf" value="{{_csrf.token}}" />
        <button type="submit">Добавить</button>
    </form>
</div>
<form method="post" action="filter">
    <input type="text" name="filter" placeholder="поиск">
    <input type="hidden" name="_csrf" value="{{_csrf.token}}" />
    <button type="submit">Найти</button>
</form>
<div>Список сообщений</div>
{{#messages}}
    <div>
        <b>{{id}}</b>
        <span>{{text}}</span>
        <i>{{tag}}</i>
        <strong>{{authorName}}</strong>
    </div>
    {{/messages}}
</body>
</html>