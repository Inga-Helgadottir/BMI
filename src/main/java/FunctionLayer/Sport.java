package FunctionLayer;

public class Sport {
    private int sports_is;
    private String name;

    public Sport(int sports_is, String name) {
        this.sports_is = sports_is;
        this.name = name;
    }

    public int getSports_is() {
        return sports_is;
    }

    public void setSports_is(int sports_is) {
        this.sports_is = sports_is;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
