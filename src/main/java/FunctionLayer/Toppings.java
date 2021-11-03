package FunctionLayer;

import java.util.ArrayList;
import java.util.List;

public class Toppings {
    private static List<Topping> toppings;
    public static void initToppings(){
        if(toppings == null){
            toppings = new ArrayList<>();
            toppings.add(new Topping(1, "Chokolate", 5.0));
            toppings.add(new Topping(2, "Blueberry", 8.0));
        }
    }

    public static List<Topping> getToppings() {
        return toppings;
    }
}
