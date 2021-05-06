package com.wzeta21.mvc.base.service;

import com.wzeta21.mvc.base.dao.ClassDAO;
import com.wzeta21.mvc.base.model.Class;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ClassService implements BaseService<Class>{
    private ClassDAO classDAO;
    public void setClassDAO(ClassDAO classDAO) {
        this.classDAO = classDAO;
    }

    @Override
    public List<Class> getAll() {
        return this.classDAO.getAll();
    }

    @Override
    public Class get(int id) {
        return this.classDAO.get(id);
    }

    @Override
    public boolean add(Class aClass) {
        return this.classDAO.add(aClass);
    }

    @Override
    public Class update(int id, Class aClass) {
        return this.classDAO.update(id, aClass);
    }

    @Override
    public boolean delete(int id) {
       return this.classDAO.delete(id);
    }
}
