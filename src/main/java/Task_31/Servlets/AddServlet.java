package Task_31.Servlets;

import Task_31.Entities.User;
import Task_31.Models.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add")
public class AddServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/add.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String password = req.getParameter("pass");

        if(name != null && surname != null && password != null){
            User user = new User();
            user.setName(name);
            user.setSurname(surname);
            user.setPassword(password);
            Model model = Model.getInstance();
            model.add(user);
        }

        req.setAttribute("username", name);
        req.setAttribute("usersurname", surname);
        doGet(req, resp);
    }
}
