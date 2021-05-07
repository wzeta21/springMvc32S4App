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
        model.addAttribute("subjectsList", this.classService.getAll());
        return "/studentclasses";
    }
	@RequestMapping("/class/{id}/students")
    public String editClass(@PathVariable("id") int id, Model model){
		Class cls = this.classService.get(id);
        model.addAttribute("subject", cls);
        model.addAttribute("listStudents", cls.getStudents());
        model.addAttribute("allStudents",this.studentService.getAll());
        return "/classStudents";
    }
	
	@RequestMapping("/subject/{code}/student/{id}/remove")
    public String removeStudentFromASubject(@PathVariable("code") int code, @PathVariable("id") int id){
		Student std = this.classService.get(code).getStudents().get(id);
        this.classService.removeStudente(code, std);
        return "redirect:/class/"+code+"/students";
    }
	@RequestMapping("/student/{id}/subject/{code}/remove")
    public String removeSubjectFromAStudent(@PathVariable("id") int id, @PathVariable("code") int code){
		Class cls = this.studentService.get(id).getClasses().get(code);
        this.studentService.removeSubject(id, cls);
        return "redirect:/student/"+id+"/classes";
    }
	
	@RequestMapping("/student/{id}/subject/{code}/add")
    public String addSubjectToStudent(@PathVariable("id") int id, @PathVariable("code") int code){
		Class cls = this.classService.get(code);
        this.studentService.get(id).getClasses().add(cls);
        return "redirect:/student/"+id+"/classes";
    }
	
	@RequestMapping("/subject/{code}/student/{id}/add")
    public String addStudetnToSubject(@PathVariable("code") int code, @PathVariable("id") int id){
		Student std = this.studentService.get(id);
        this.classService.get(code).getStudents().add(std);
        return "redirect:/class/"+code+"/students";
    }
}
