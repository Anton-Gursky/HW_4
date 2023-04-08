<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new application</title>
</head>
<body>

<div>
    <h1>Приложение по добавлению заявок</h1>
</div>

<div>
    <%
        if (request.getAttribute("username") != null && request.getAttribute("usersurname") != null) {
            out.println("<p>Заявка от пользователя '" + request.getAttribute("username") + " " + request.getAttribute("usersurname") + "' добавлена!</p>");
        } else {
            out.println("<p>Не все поля заполнены!</p>");
        }
    %>
    <div>

        <div>
            <h2>Добавьте заявку</h2>
        </div>

        <form method="post">
            <label>
                Имя: <input type="text" name="name">
                <br/>
            </label>

            <label>
                Фамилия: <input type="text" name="surname">
                <br/>
            </label>

            <label>
                Пароль: <input type="password" name="pass">
                <br/>
            </label>

            <button type="submit">Создать заявку</button>
        </form>
    </div>
</div>

<div>
    <button onclick="location.href = '/'">Вернуться на главную страницу</button>
</div>

</body>
</html>