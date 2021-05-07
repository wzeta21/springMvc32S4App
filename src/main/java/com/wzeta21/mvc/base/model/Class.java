package com.wzeta21.mvc.base.model;

import java.util.List;

public class Class {

    private int code;
    private String title;
    private String description;
    private List<Student> students;

    public  Class(){}
    public  Class(int code, String title, String description){
        this.code = code;
        this.title = title;
        this.description = description;
    }
    public  Class(int code, String title, String description, List<Student> students){
        this.code = code;
        this.title = title;
        this.description = description;
        this.students = students;
    }
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }
    @Override
    public String toString(){
        return this.title;
    }

}
