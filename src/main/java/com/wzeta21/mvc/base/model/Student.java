package com.wzeta21.mvc.base.model;

import java.util.List;

public class Student {
    private int studentId;
    private String lastName;
    private String firstName;
    private List<Class> classes;
    public  Student(){
    }
    public  Student(int id, String firstName, String lastName){
        this.studentId = id;
        this.firstName = firstName;
        this.lastName = lastName;
    }
    public  Student(int id, String firstName, String lastName, List<Class> classes){
        this.studentId = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.classes = classes;
    }
    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public List<Class> getClasses() {
        return classes;
    }

    public void setClasses(List<Class> classes) {
        classes = classes;
    }
    @Override
    public String toString(){
        return firstName + " " + lastName;
    }
}
