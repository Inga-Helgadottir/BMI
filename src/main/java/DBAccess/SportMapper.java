package DBAccess;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Sport;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SportMapper {

    public static List<Sport> getAllSports() throws LoginSampleException {
        List<Sport> sportList = null;
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM sport";
            PreparedStatement ps = con.prepareStatement( SQL );
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                if(sportList == null){
                    sportList = new ArrayList<>();
                }
                int sport_id = rs.getInt( "sport_id" );
                String name = rs.getString("name");
                Sport sport = new Sport(sport_id, name);
                sportList.add(sport);
            }
        } catch ( ClassNotFoundException | SQLException ex ) {
            throw new LoginSampleException(ex.getMessage());
        }
        return sportList;
    }
<<<<<<< HEAD

    public static void updateSport(int sport_id, String name) throws LoginSampleException {
        int newId = 0;
        try {
            Connection con = Connector.connection();
            String SQL = "UPDATE sport SET name = ? WHERE sport_id = ?";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, name);
            ps.setInt(2, sport_id);
            int result = ps.executeUpdate();

        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static void deleteSport(int sport_id) throws LoginSampleException {

        int newId = 0;
        try {
            Connection con = Connector.connection();
            String SQL = "DELETE FROM sport WHERE sport_id = ?";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, sport_id);
            int result = ps.executeUpdate();

        } catch (ClassNotFoundException | SQLException ex) {
            if(ex.getMessage().startsWith("Cannot delete or update a parent row")){
                throw new LoginSampleException("Du kan ikke fjerne sportskategorier som allerede er anvendt i databasen");
            }else {
                throw new LoginSampleException(ex.getMessage());
            }
        }
    }
=======
>>>>>>> c65d3bd38bf41c4a33a7d6b7e0d16faa25224b8b
}