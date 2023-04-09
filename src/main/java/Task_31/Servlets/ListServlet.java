package Task_31.Servlets;

import Task_31.Models.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/list")
public class ListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Model model = Model.getInstance();
        List<String> names = model.list();
        List<String> surnames = model.listSurnames();
        req.setAttribute("userNames", names);
        req.setAttribute("userSurnames", surnames);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/list.jsp");
        requestDispatcher.forward(req, resp);
    }
}
