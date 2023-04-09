<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add new application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body style="background-color: whitesmoke">

<div style="color: darkcyan; background-color: lightgrey; height: 100px">
    <h1 style="text-align: center; line-height: 100px">
        Приложение по добавлению заявок
    </h1>
</div>

<div>
    <div class="alert alert-warning" role="alert" style="height: 30px; vertical-align: middle; line-height: 0px">
        <%
            if (request.getAttribute("username") != null && request.getAttribute("usersurname") != null) {
                out.println("<p>Заявка от пользователя '" + request.getAttribute("username") + " " + request.getAttribute("usersurname") + "' добавлена!</p>");
            } else {
                out.println("<p>Не все поля заполнены!</p>");
            }
        %>
    </div>
    <div style="position: relative; height: 250px">

        <div style="position: relative; width: 655px; text-align: center; vertical-align: middle; line-height: 200px">
            <h3>Внесите данные для создания заявки</h3>
        </div>

        <div style="vertical-align: middle; line-height: 50px; margin-left: 30px">
            <form method="post">
                <label class="form-label">
                    Имя: <input type="text" name="name" class="form-control">
                    <br/>
                </label>

                <label class="form-label">
                    Фамилия: <input type="text" name="surname" class="form-control">
                    <br/>
                </label>

                <label class="form-label">
                    Пароль: <input type="password" name="pass" class="form-control">
                    <br/>
                </label>

                <div>
                    <div>
                        <button type="submit" class="btn btn-success"
                                style="position: absolute; right: 200px; bottom: 20px">
                            Создать заявку
                        </button>
                    </div>
                    <div style="margin-left: 30px">
                        <button type="button" onclick="location.href = '/'" class="btn btn-outline-secondary">Вернуться на главную
                            страницу
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>