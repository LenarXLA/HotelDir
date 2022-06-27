<style>
    .field {
        font-size: small;
        font-style: italic;
    }
    .main {
        font-weight: bold;
    }
</style>

<table>
    <thead>
    <tr>
        <g:each in="${domainProperties}" var="p" status="i">
            <g:if test="${p.label=='Title'}">
                <td><h3 class="main">Название</h3></td>
            </g:if>
            <g:if test="${p.label=='Stars'}">
                <td><h3 class="main">Звездность</h3></td>
            </g:if>
        </g:each>
    </tr>
    </thead>
    <tbody>
    <g:each in="${collection}" var="bean">
        <tr >
            <g:each in="${domainProperties}" var="p">
                <g:if test="${bean.site!=null}">
                    <td>
                        <g:if test="${p.label=='Title'}">
                            <p><f:display bean="${bean}" property="${p.property}" /></p>

                            <g:link uri="${bean.site}" target="_blank"><p class="field">Перейти на сайт</p></g:link>
                        </g:if>
                        <g:else>
                            <p><f:display bean="${bean}" property="${p.property}" /></p>
                        </g:else>
                    </td>
                </g:if>
                <g:else>
                    <td>
                        <p><f:display bean="${bean}" property="${p.property}" /></p>
                    </td>
                </g:else>
            </g:each>
        </tr>
    </g:each>
    </tbody>
</table>