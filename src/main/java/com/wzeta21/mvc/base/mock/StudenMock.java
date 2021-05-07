package com.wzeta21.mvc.base.mock;

import com.wzeta21.mvc.base.model.Class;
import com.wzeta21.mvc.base.model.Student;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class StudenMock {
    private List<Student> studentList;

    public StudenMock(){
        Student e1 = new Student(1, "Jose Manuel", "Loza Lopez");
        Student e2 = new Student(2, "Jose Jose", "Nogales Lopez");
        Student e3 = new Student(3, "Jose Maria", "Da silva neves");
        Student e4 = new Student(4, "Jose Luis", "Morales Terrazas");
        Student e5 = new Student(5, "Maria Marina", "Carlos Loras");
        Student e6 = new Student(6, "Marciño", "Moreira perez");
        Student e7 = new Student(7, "Eleuterio", "Nuñez");
        Student e8 = new Student(8, "Josue", "Meriles");
        Student e9 = new Student(9, "Eloy", "Martinez Lopez");

        this.studentList = new ArrayList<>();
        this.studentList.add(e1);
        this.studentList.add(e2);
        this.studentList.add(e3);
        this.studentList.add(e4);
        this.studentList.add(e5);
        this.studentList.add(e6);
        this.studentList.add(e7);
        this.studentList.add(e8);
        this.studentList.add(e9);        
    }

    public List<Student> getStudentList() {
        return studentList;
    }
}
