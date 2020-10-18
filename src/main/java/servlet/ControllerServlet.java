package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ControllerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        session.setAttribute("name", "Tom");
        session.setAttribute("age", 34);

        String oldR = (String) request.getParameter("value-R");;
        String newR = oldR + "@@@";

        session.setAttribute("value", newR);

        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

    }
}
