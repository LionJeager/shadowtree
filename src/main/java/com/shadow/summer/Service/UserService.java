package com.shadow.summer.Service;

import java.util.Map;

public interface UserService {
        String AuthLogin(Map<String,String> userDetail);
        void addOne(Map<String,String> registInfo);
}
