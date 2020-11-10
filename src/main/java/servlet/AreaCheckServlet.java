package servlet;

import model.DataInfo;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/areaCheck")

public class AreaCheckServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String result;
        HttpSession session = request.getSession();

        if (Validator.validation(request)) {
            log("3");

            double valueX = Double.parseDouble(request.getParameter("value-X"));
            double valueY = Double.parseDouble(request.getParameter("value-Y"));
            double valueR = Double.parseDouble(request.getParameter("value-R"));

            if (isValid(valueX, valueY, valueR)) {
                if (checkQuarterCircle(valueX, valueY, valueR) || checkRectangle(valueX, valueY, valueR)
                        || checkTriangle(valueX, valueY, valueR)) {
                    result = "TRUE";
                } else {
                    result = "FALSE";
                }
            } else {
                result = "Числа не входят в ОДЗ";
            }

            DataInfo object = new DataInfo(valueX, valueY, valueR, result);
            List<DataInfo> tableData = (ArrayList<DataInfo>) session.getAttribute("tableData");
            tableData = tableData == null ? new ArrayList<DataInfo>() : tableData;
            tableData.add(object);

            session.setAttribute("tableData", tableData);
        }
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        log("4");

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private static boolean isValid(double valueX, double valueY, double valueR) {
        return valueX > -3 && valueX < 3 && valueY >= -4 && valueY <= 4 && valueR >= 1 && valueR <= 5;
    }

    private static boolean checkRectangle(double valueX, double valueY, double valueR) {
        return valueX <= 0 && valueY >= 0 && valueX >= -valueR && valueY <= valueR / 2;
    }

    private static boolean checkQuarterCircle(double valueX, double valueY, double valueR) {
        return valueX >= 0 && valueY <= 0 && (valueX * valueX + valueY * valueY <= valueR * valueR);
    }

    private static boolean checkTriangle(double valueX, double valueY, double valueR) {
        return valueX <= 0 && valueY <= 0 && (-valueY <= valueX + valueR);
    }
}
