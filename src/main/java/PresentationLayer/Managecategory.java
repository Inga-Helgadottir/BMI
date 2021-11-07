package PresentationLayer;

import BMIUtil.BmiHelperFunctions;
import BMIUtil.Initializer;
import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Managecategory extends Command{
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        String fjernId = request.getParameter("fjernknap");
        String retId = request.getParameter("retknap");
        String action = request.getParameter("action");
        int retIdInt = 0;

        if(fjernId != null){
            action="fjern";
        }else if(retId != null){
            action="ret";
        }else if(action != null){
            action="opdater";
        }

        switch (action){
            case "fjern":
                int fjernIdInt = Integer.parseInt(fjernId);
                LogicFacade.deleteSport(fjernIdInt);
                request.getServletContext().setAttribute("sportList", LogicFacade.getAllSports());
                return "kategorier";
            case "ret":
                retIdInt = Integer.parseInt(retId);
                request.setAttribute("retId", retId);
                Initializer.initSportList();
                request.setAttribute("sport", BmiHelperFunctions.getSportCategoryById(retIdInt));
                return "retkategorier";
            case "opdater":
                retIdInt = Integer.parseInt(request.getParameter("sportid"));
                String kategoritekst = request.getParameter("kategori");
                LogicFacade.updateSport(retIdInt, kategoritekst);
                Initializer.initSportList();
                request.getServletContext().setAttribute("sportList", Initializer.getSportList());
                return "kategorier";
            default:
                return "kategori";
        }
    }
}
