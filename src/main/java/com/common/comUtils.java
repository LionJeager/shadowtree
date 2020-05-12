package com.common;
import java.util.Base64;

import org.springframework.util.StringUtils;

public class comUtils {
    public static String encode(String str){
        if(StringUtils.isEmpty(str)) return "";
        return Base64.getEncoder().encodeToString(str.getBytes());
    }

    public static String decodeBase64(String encoded){
        return Base64.getDecoder().decode(encoded).toString();
    }

}
