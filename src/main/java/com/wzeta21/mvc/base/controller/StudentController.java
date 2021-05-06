package com.wzeta21.mvc.base.controller;

import com.wzeta21.mvc.base.dao.StudentDAO;
import com.wzeta21.mvc.base.model.Student;
import com.wzeta21.mvc.base.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController {
    private StudentService service;

    public StudentController(){        
    }
    @Autowired(required = true)
    @Qualifier(value = "studentService")
    public void setService(StudentService service) {
        this.service = service;
    }

    @RequestMapping(value = "students", method = RequestMethod.GET)
    public String listStudents(Model model){
        model.addAttribute("student", new Student());
        model.addAttribute("listStudents", this.service.getAll());
        return "/student";
    }

    @RequestMapping(value = "/student/add", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute("student") Student std){
        if (std.getStudentId() == 0){
            this.service.add(std);
        }else{
            this.service.update(std.getStudentId(), std);
        }
        return  "redirect:/students";
    }

    @RequestMapping("/remove/{id}")
    public String removeStudent(@PathVariable("id") int id){
        this.service.delete(id);
        return "redirect:/students";
    }

    public String editStudent(@PathVariable("id") int id, Model model){
        model.addAttribute("student", this.service.get(id));
        model.addAttribute("listStudents", this.service.getAll());
        return "/student";
    }
}
