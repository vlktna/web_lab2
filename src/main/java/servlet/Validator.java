package servlet;

import exceptions.NumberLengthException;

import javax.servlet.http.HttpServletRequest;

import static com.sun.activation.registries.LogSupport.log;

public class Validator {

    static boolean validation(HttpServletRequest request) {

        if (request.getParameter("value-X") == null || request.getParameter("value-Y") == null
                || request.getParameter("value-R") == null) {
            log("1.1");
            return false;
        } else {
            try {
                log("1.2");
                String valueX = request.getParameter("value-X");
                String valueY = request.getParameter("value-Y");
                String valueR = request.getParameter("value-R");

                if (valueX.length() > 17 || valueY.length() > 17 || valueR.length() > 17) throw new NumberLengthException();

                Double.parseDouble(valueX);
                Double.parseDouble(valueY);
                Double.parseDouble(valueR);

            } catch (NumberFormatException e) {
                log("1.3");

                return false;
            } catch (NumberLengthException e) {
                log("1.4");

                return false;
            }
            return true;
        }

    }

    static boolean val(){
        return true;
    }

}

