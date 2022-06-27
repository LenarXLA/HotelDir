<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}" />
    <title>Список найденных отелей</title>
    <style>
        .findBtn {
            padding: 2rem;
            margin: 1rem;
            background-color: #feb672;
            background-size: 1.6rem 1.6rem;
        }
    </style>
</head>
<body>

    <div class="nav" role="navigation">
        <ul>
            <li class="findBtn"><g:link action="index"><g:message message="Новый поиск" args="[entityName]" /></g:link></li>
        </ul>
    </div>

    <h4>Количество найденных отелей: ${hotelCount}</h4>
    <f:table collection="${hotelList}" properties="title, stars" template="tableCustom"/>

</body>
</html>