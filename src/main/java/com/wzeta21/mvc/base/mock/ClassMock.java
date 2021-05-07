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
        Class c2 = new Class(2, "Algebra Lineal", "none");
        Class c3 = new Class(3, "Física I", "Sobre aspectos de la fisica");
        Class c4 = new Class(4, "Fisica II", "Fisica para apacionados");
        Class c5 = new Class(5, "Programación I", "para aprender a usar un teclado de pc.");
        Class c6 = new Class(6, "Programación II", "para aprender a usar un raton de pc.");
        Class c7 = new Class(7, "Lenguajes de programación", "Para conocer la existencia de lenguaes de ...");

        classList = new ArrayList<>();
        classList.add(c1);
        classList.add(c2);
        classList.add(c3);
        classList.add(c4);
        classList.add(c5);
        classList.add(c6);
        classList.add(c7);
    }
    public List<Class> getClassList() {
        return classList;
    }
}
