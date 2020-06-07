package com.soa.soap;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
@CrossOrigin(origins = "*")
public class Controller {
    @RequestMapping(value = "/test")
    public String test() {
        return "home.jsp";
    }
}
