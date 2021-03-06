package DBAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {

    private static String URL;
    private static String USERNAME;
    private static String PASSWORD;

    private static Connection singleton;

    public static void setConnection( Connection con ) {
        singleton = con;
    }

    public static Connection connection() throws ClassNotFoundException, SQLException {
        //if ((singleton == null) || singleton.isClosed()) {
        if ( singleton == null ) {
            setDBCredentials();
            Class.forName( "com.mysql.cj.jdbc.Driver" );
            singleton = DriverManager.getConnection( URL, USERNAME, PASSWORD );
        }
        return singleton;
    }

    public static void setDBCredentials() {
        //droplet = 164.90.182.209
//        String deployed = System.getenv("DEPLOYED");
//        they are all null
        System.out.println(System.getenv("DEPLOYED"));
        System.out.println(System.getenv("JDBC_CONNECTION_STRING"));
        System.out.println(System.getenv("JDBC_USER"));
        System.out.println(System.getenv("JDBC_PASSWORD"));
        /*if (deployed != null){
            // Prod: hent variabler fra setenv.sh i Tomcats bin folder
//            URL = System.getenv("JDBC_CONNECTION_STRING");
//            USERNAME = System.getenv("JDBC_USER");
//            PASSWORD = System.getenv("JDBC_PASSWORD");

            URL = "jdbc:mysql://localhost:3306/bmi?serverTimezone=CET&useSSL=false";
            USERNAME = "bmi_user";
            PASSWORD = "BMIdropletPass";
        } else {*/
            URL = "jdbc:mysql://localhost:3306/useradmin?serverTimezone=CET&useSSL=false";
            USERNAME = "sih";
            PASSWORD = "mysqlPasswordSIH995";
//        }
    }

}
