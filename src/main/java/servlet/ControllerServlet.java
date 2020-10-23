package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long startTime = System.currentTimeMillis();

        try {

            Double.parseDouble(request.getParameter("value-X"));
            Double.parseDouble(request.getParameter("value-Y"));
            Double.parseDouble(request.getParameter("value-R"));
            getServletContext().getRequestDispatcher("/areaCheck").forward(request, response);

        }catch (NullPointerException e){
            getServletContext().getRequestDispatcher("/jsp/error.jsp").forward(request, response);
        }catch (NumberFormatException e){
            getServletContext().getRequestDispatcher("/jsp/error.jsp").forward(request, response);
        }finally {
            HttpSession session = request.getSession();
            session.setAttribute("startTime", startTime);
        }
    }
}
