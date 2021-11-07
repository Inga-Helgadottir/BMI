package BMIUtil;
/**
 * Hjælpefunktioner til BMI web
 */

import FunctionLayer.Sport;

import java.util.List;

public class BmiHelperFunctions {

    /**
     *
     * @param height in cm
     * @param weight in kg
     * @return bmi calculated
     * @author Inga
     */
    public static Double calcBmi(Double height, Double weight){
        return weight / (height * height) * 100 *100;
    }

    /**
     *
     * @param bmi value
     * @return a bmi category text
     */
    public static String findKategori(Double bmi){
        String kategori = "";
        if(bmi < 18.5){
            kategori = "Undervægtig";
        }else if(bmi > 30){
            kategori = "Svært overvægtig";
        }else if (bmi < 25){
            kategori = "Normalvægtig";
        }else {
            kategori = "Overvægtig";
        }

        return kategori;
    }

    /**
     *
     * @param id
     * @return the sport with that id
     */
    public static Sport getSportCategoryById(int id){
        List<Sport> sportList = Initializer.getSportList();
        for (Sport sport : sportList){
            if(sport.getSports_id() == id){
                return sport;
            }
        }
        return null;
    }
}
