package business.services;

import business.exceptions.UserException;
import business.persistence.BmiMapper;
import business.persistence.Database;

import java.util.List;

/**
 * CREATED BY Janus @ 2021-04-13 - 18:37
 **/
public class BmiFacade {
    private BmiMapper bmiMapper;

    public BmiFacade(Database database) {
        this.bmiMapper = new BmiMapper(database);
    }

    public void insertBmiEntry(
            double bmi,
            double height,
            double weight,
            String category,
            String gender,
            int sport_id,
            int user_id,
            List<Integer> hobbyList) throws UserException

        {
            bmiMapper.insertBmiEntry(bmi, height, weight,category,gender,sport_id, user_id,hobbyList);
        }


    }
