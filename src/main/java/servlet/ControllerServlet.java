package servlet;

import exceptions.NumberLengthException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String valueX = request.getParameter("value-X");
            String valueY = request.getParameter("value-Y");
            String valueR = request.getParameter("value-R");

            if (valueX.length() > 17 || valueY.length() > 17|| valueR.length() > 17) throw new NumberLengthException();

            Double.parseDouble(valueX);
            Double.parseDouble(valueY);
            Double.parseDouble(valueR);
            getServletContext().getRequestDispatcher("/areaCheck").forward(request, response);

        }catch (NullPointerException e){
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }catch (NumberFormatException e){
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }catch (NumberLengthException e){
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setAttribute("tableData", null);
    }
}
