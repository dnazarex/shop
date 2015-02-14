package ru.savvy.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.savvy.shop.service.MyService;

/**
 * Created by dnazarex on 11/02/15.
 */
@Controller
public class MyController {

    @Autowired
    private MyService myService;

    @RequestMapping(value = "/mypage/{id}", method = RequestMethod.GET)
    public ModelAndView myPage(@PathVariable Long id){
        ModelAndView model = new ModelAndView("mypage"); // view name
        model.addObject("myObject", myService.myDataFromDB(id)); // data to be passed to the view
        model.addObject("tableName","Product");
        return model;
    }
}
