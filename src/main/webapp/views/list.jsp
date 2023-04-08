<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Заявки</title>
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
