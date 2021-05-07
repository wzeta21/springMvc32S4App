package com.wzeta21.mvc.base.mock;

import com.wzeta21.mvc.base.model.Class;
import com.wzeta21.mvc.base.model.Student;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ClassMock {

    private List<Class> classList;
    public  ClassMock(){
        Class c1 = new Class(1, "Matematica1", "Para aprender a suamr");
        Class c2 = new Class(2, "Algebra Lineal", "Para aprender a suamr");
        Class c3 = new Class(3, "Fśica I", "Para aprender a suamr");
        Class c4 = new Class(4, "Fisica II", "Para aprender a suamr");
        Class c5 = new Class(5, "Programación I", "Para aprender a suamr");

        classList = new ArrayList<>();
        classList.add(c1);
        classList.add(c2);
        classList.add(c3);
        classList.add(c4);
        classList.add(c5);
    }
    public List<Class> getClassList() {
        return classList;
    }
}
