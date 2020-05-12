package com.shadow.summer.Dao;

import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface UserDao {
    Integer AuthLogin(Map<String, String> userDetail);
    void addOne(Map<String, String> registInfo);
}
