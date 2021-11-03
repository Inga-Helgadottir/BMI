package PresentationLayer;

import BMIUtil.BmiHelperFunctions;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Toppings;

import javax.rmi.CORBA.Util;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Utilities;
import java.util.Arrays;
import java.util.List;

public class Resultat extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        Double height = 0.0;
        Double weight = 0.0;
        try {
            height = Double.parseDouble(request.getParameter("height"));
            weight = Double.parseDouble(request.getParameter("weight"));

        }catch (Exception e){
            throw new LoginSampleException("Du skal indtaste et tal som højde og vægt");
        }
        Double bmi = BmiHelperFunctions.calcBmi(height, weight);
        String bmi_to_dec = String.format("%.2f", bmi);
        String kategori = BmiHelperFunctions.findKategori(bmi);
        String gender = request.getParameter("gender");

        int sport = 0;
        try{
            sport = Integer.parseInt(request.getParameter("sport"));
        }catch (Exception e){
            throw new LoginSampleException("Fejl i sport parameter");
        }

        String[] infos = request.getParameterValues("info");

        List infoList = null;
        if(infos != null){
            infoList = Arrays.asList(infos);
        }

        request.setAttribute("height", height);
        request.setAttribute("weight", weight);
        request.setAttribute("kategori", kategori);
        request.setAttribute("bmi", bmi_to_dec);
        request.setAttribute("toppings", Toppings.getToppings());
        request.setAttribute("gender", gender);
        request.setAttribute("sport", sport);
        request.setAttribute("infos", infoList);

        return "resultat";
    }
}
