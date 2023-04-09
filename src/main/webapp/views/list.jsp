<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Заявки</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

<div>
    <h1>Приложение по добавлению заявок</h1>
</div>

<div>
    <div>
        <div>
            <h2>Заявки</h2>
        </div>
        <%
            List<String> names = (List<String>) request.getAttribute("userNames");
            List<String> surnames = (List<String>) request.getAttribute("userSurnames");

            if (names != null && !names.isEmpty()) {
                out.println("<ui>");
                for (int i = 0; i < names.size(); i++) {
                    out.println("<li>" + names.get(i) + " " + surnames.get(i) + "</li>");
                }
                out.println("</ui>");
            } else {
                out.println("<p>Пока нет заявок</p>");
            }
        %>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Вернуться на главную страницу</button>
</div>

</body>
</html>
