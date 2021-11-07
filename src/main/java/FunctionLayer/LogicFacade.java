package FunctionLayer;

import DBAccess.InfoMapper;
import DBAccess.SportMapper;
import DBAccess.UserMapper;

import java.util.List;

/**
 * The purpose of LogicFacade is to...
 * @author kasper
 */
public class LogicFacade {

    public static User login(String email, String password) throws LoginSampleException {
        return UserMapper.login(email, password);
    }

    public static User createUser(String email, String password) throws LoginSampleException {
        User user = new User(email, password, "customer");
        UserMapper.createUser(user);
        return user;
    }

    public static List<Sport> getAllSports() throws LoginSampleException {
        return SportMapper.getAllSports();
    }

    public static List<Info> getAllInfos() throws LoginSampleException {
        return InfoMapper.getAllInfos();
    }

    public static void updateSport(int sport_id, String name) throws LoginSampleException {
        SportMapper.updateSport(sport_id, name);
    }

    public static void deleteSport(int sport_id) throws LoginSampleException {
        SportMapper.deleteSport(sport_id);
    }
}
