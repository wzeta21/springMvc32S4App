package com.wzeta21.mvc.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wzeta21.mvc.base.model.Student;
import com.wzeta21.mvc.base.model.Class;
import com.wzeta21.mvc.base.service.ClassService;
import com.wzeta21.mvc.base.service.StudentService;

@Controller
public class StudentsClassesController {
	private StudentService studentService;
	private ClassService classService;
	@Autowired(required = true)
    @Qualifier(value = "classService")
    public  void setClassService(ClassService service){
        this.classService = service;
    }
	@Autowired(required = true)
    @Qualifier(value = "studentService")
    public void setStudentService(StudentService service) {
        this.studentService = service;
    }
	@RequestMapping("/student/{id}/classes")
    public String editStudent(@PathVariable("id") int id, Model model){
		Student std = this.studentService.get(id);
        model.addAttribute("student", std);
        model.addAttribute("listClasses", std.getClasses());
        return "/studentclasses";
    }
	@RequestMapping("/class/{id}/students")
    public String editClass(@PathVariable("id") int id, Model model){
		Class cls = this.classService.get(id);
        model.addAttribute("student", cls);
        model.addAttribute("listStudents", cls.getStudents());
        return "/classStudents";
    }
}
