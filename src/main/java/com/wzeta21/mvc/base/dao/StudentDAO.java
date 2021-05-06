package com.wzeta21.mvc.base.dao;

import com.wzeta21.mvc.base.mock.StudenMock;
import com.wzeta21.mvc.base.model.Student;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class StudentDAO implements BaseDAO<Student>{
    private StudenMock studenMock = new StudenMock();
    @Override
    public List<Student> getAll() {
        return studenMock.getStudentList();
    }

    @Override
    public Student get(int id) {
        for (Student e : this.studenMock.getStudentList()){
            if (e.getStudentId() == id){
                return e;
            }
        }
        return null;
    }

    @Override
    public boolean add(Student student) {
        return  this.studenMock.getStudentList().add(student);
    }

    @Override
    public Student update(int id, Student student) {
        int index = this.studenMock.getStudentList().indexOf(student);
        return this.studenMock.getStudentList().set(index, student);
    }

    @Override
    public boolean delete(int id) {
         for(Student e : this.studenMock.getStudentList()){
             if(e.getStudentId() == id){
               return  this.studenMock.getStudentList().remove(e);
             }
         }
         return  false;
    }
}
