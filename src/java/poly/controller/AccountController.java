/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 *
 * @author Administrator
 */
@Controller
public class AccountController {
    @RequestMapping("index1")
    public String index1(){
        return "index1";
    }
}
