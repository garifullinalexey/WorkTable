<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xml:lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
    <link rel="stylesheet" href="/static/style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Табель</title>
</head>
<body>
<div class="container-class">
    <div class="buttons-class d-flex flex-row bd-highlight">
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="01" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Январь" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="02" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Февраль" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="03" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Март" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="04" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Апрель" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="05" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Май" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="06" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Июнь" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="07" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Июль" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="08" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Август" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="09" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Сентябрь" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="10" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Октябрь" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="11" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Ноябрь" />
            </form>
        </div>
        <div class="p-2 bd-highlight">
            <form action="/" method="post">
                <input type="hidden" value="12" name="month">
                <input type="submit" class="btn btn-outline-primary" value="Декабрь" />
            </form>
        </div>
    </div>
    <div class="deps-class list-group">
        <a class="list-group-item active">Департаменты</a>
        <#list depos as dep>
            <div class="buttons-class">
                <form action="/" method="post">
                    <input type="hidden" value="${dep.id}" name="dep">
                    <input type="submit" class="list-group-item list-group-item-action" value="${dep.name}" />
                </form>
            </div>
        </#list>
    </div>
    <div class="table-class table-striped table-bordered">
        <table>
            <thead>
            <tr>
                <th align="center">Фио</th>
                <th>Должность</th>
                <th>Табельный №</th>
                <#list 1..31 as x>
                    <th>${x}</th>
                </#list>
            </tr>
            </thead>
            <tbody>
            <#list staffs as staff>
                <tr>
                    <td align="center">${staff.name}</td>
                    <td align="center">${staff.position}</td>
                    <td align="center">${staff.table_number}</td>
                    <#list 1..31 as x>
                        <#list prodCal as pc>
                            <#if pc.staff = staff && pc.date?string["dd"] = x?string["00"]>
                                <td title="${pc.mark.comment}" align="center">${pc.mark.code}</td>
                                <#break>
                            <#else>
                                <#if pc_has_next>
                                <#else>
                                    <td title="Не заполнено"></td>
                                </#if>
                            </#if>
                            <#else>
                                <td title="Не заполнено"></td>
                        </#list>
                    </#list>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
</body>
</html>