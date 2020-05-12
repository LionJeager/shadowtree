package com.shadow.summer.Controller;

import com.common.comUtils;
import com.shadow.summer.Service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping(value="/")
public class UserLogin {

    @Autowired
    HttpServletRequest request;

    @Autowired
    private UserServiceImpl userServiceImpl;

    @GetMapping(value="/")
    public ModelAndView DefaultPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pwdLogin");
        return mv;
    }

    @PostMapping(value = "/User/RegistAction")
    @ResponseBody
    public String indexRegist(@RequestBody Map<String,String> registInfo) {
        registInfo.put("phoneNum", comUtils.encode(registInfo.get("phoneNum")));
        registInfo.put("password", comUtils.encode(registInfo.get("password")));
        userServiceImpl.addOne(registInfo);
        return "SUCCESS";
    }

    @PostMapping(value = "/User/LoginAction")
    public String indexLogin(@RequestParam String phoneNum,@RequestParam String password) {
        Map<String,String> userDetail = new HashMap<>();
        userDetail.put("phoneNum",comUtils.encode(phoneNum));
        userDetail.put("password", comUtils.encode(password));
        String status = userServiceImpl.AuthLogin(userDetail);
        HttpSession session = request.getSession();
        if ("SUCCESS".equals(status)) {
            session.setAttribute("userPhone",userDetail.get("phoneNum").replaceAll("(\\d{3})\\d{4}(\\d{4})","$1****$2"));
            return "Index";
        }else{
            session.setAttribute("message","手机号码或密码错误");
            return "pwdLogin";
        }

    }

}
