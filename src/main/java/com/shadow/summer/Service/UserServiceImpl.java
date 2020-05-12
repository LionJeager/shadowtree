package com.shadow.summer.Service;

import com.shadow.summer.Dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    @Override
    public String AuthLogin(Map<String,String> userDetail) {
        if(userDao.AuthLogin(userDetail)>0){
            return "SUCCESS";
        }
        return "FAILED";
    }

    public void addOne(Map<String, String> registInfo) {
        try {
            userDao.addOne(registInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
