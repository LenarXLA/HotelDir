<html>
<head>
    <meta name="layout" content="main" />
    <title>Поиск отелей</title>
</head>

<body>

    <div class="nav" role="navigation">
        <ul>
            <li ><g:link url="[action:'index',controller:'country']">Справочник стран</g:link></li>
            <li ><g:link url="[action:'index',controller:'hotel']">Справочник отелей</g:link></li>
        </ul>
    </div>

    <div style="text-align: center">
        <h2>Поиск отелей</h2>
        <g:form name="findHotelsForm" controller="search" action="show">

            <g:textField name="txtHotel" value="${txtHotel}"/>
            <g:select name="countryTitle"
                      from="${hoteldir.Country.list()}"
                      value="${countryTitle}"
                      optionKey="title"/>

            <g:actionSubmit name="findBtn" value="Найти" action="show"/>

        </g:form>


    </div>

</body>
</html>