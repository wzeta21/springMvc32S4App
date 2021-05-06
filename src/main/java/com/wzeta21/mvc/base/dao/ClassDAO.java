package com.wzeta21.mvc.base.dao;

import com.wzeta21.mvc.base.mock.ClassMock;
import com.wzeta21.mvc.base.model.Class;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public class ClassDAO implements BaseDAO<Class>{
    private ClassMock classMock = new ClassMock();
    @Override
    public List<Class> getAll() {
        return this.classMock.getClassList();
    }

    @Override
    public Class get(int id) {
        for (Class c: this.classMock.getClassList()) {
            if(c.getCode() == id){
                return  c;
            }
        }
        return null;
    }

    @Override
    public boolean add(Class aClass) {
        return  classMock.getClassList().add(aClass);
    }

    @Override
    public Class update(int id, Class aClass) {
        int index = 0;
        for(Class cls: this.classMock.getClassList()){
            if (cls.getCode() == id){
                break;
            }
            index++;
        }

        return classMock.getClassList().set(index, aClass);
    }

    @Override
    public boolean delete(int id) {
        for (Class c : classMock.getClassList()){
            if(c.getCode() == id){
                return classMock.getClassList().remove(c);
            }
        }
        return false;
    }
}
