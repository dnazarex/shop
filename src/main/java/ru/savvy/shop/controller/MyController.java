package ru.savvy.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by dnazarex on 11/02/15.
 */
@Controller
public class MyController {

    @RequestMapping("/mypage")
    public ModelAndView myPage(){
        ModelAndView model = new ModelAndView("mypage"); // view name
        model.addObject("myObject", "Hello i'm a controller data"); // data to be passed to the view
        return model;
    }
}
