package com.wzeta21.mvc.base.controller;

import com.wzeta21.mvc.base.model.Class;
import com.wzeta21.mvc.base.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ClassController {
    private ClassService service;
    @Autowired(required = true)
    @Qualifier(value = "classService")
    public  void setService(ClassService service){
        this.service = service;
    }
    @RequestMapping(value = "classes", method = RequestMethod.GET)
    public String listClasses(Model model){
        model.addAttribute("class", new Class());
        model.addAttribute("listClasses", this.service.getAll());
        return "/class";
    }
    @RequestMapping(value = "/class/add", method = RequestMethod.POST)
    public String addClass(@ModelAttribute("class") Class cls){
        if (cls.getCode() == 0){
            this.service.add(cls);
        }else{
            this.service.update(cls.getCode(), cls);
        }
        return  "redirect:/classes";
    }
    @RequestMapping("/removecls/{id}")
    public String removeClass(@PathVariable("id") int id){
        this.service.delete(id);
        return "redirect:/classes";
    }
    @RequestMapping("/editcls/{id}")
    public String editClass(@PathVariable("id") int id, Model model){
        model.addAttribute("class", this.service.get(id));
        model.addAttribute("listClasses", this.service.getAll());
        return "/class";
    }
}
