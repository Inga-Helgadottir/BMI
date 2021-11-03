package BMIUtil;

import FunctionLayer.Info;
import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Sport;

import java.util.ArrayList;
import java.util.List;

public class Initializer {

    private static List<Sport> sportList = null;
    private static List<Info> infoList = null;

    public static List<Sport> getSportList() {
        if(sportList == null){
            try {
                sportList = LogicFacade.getAllSports();
            } catch (LoginSampleException e) {
                e.printStackTrace();
            }
        }
        return sportList;
    }

    public static List<Info> getInfoList() {
        if(infoList == null){
            try {
                infoList = LogicFacade.getAllInfos();
            } catch (LoginSampleException e) {
                e.printStackTrace();
            }
        }
        return infoList;
    }
}