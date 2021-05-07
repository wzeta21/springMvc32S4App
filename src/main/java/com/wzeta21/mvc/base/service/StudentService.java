package com.wzeta21.mvc.base.service;

import com.wzeta21.mvc.base.dao.StudentDAO;
import com.wzeta21.mvc.base.model.Class;
import com.wzeta21.mvc.base.model.Student;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StudentService implements  BaseService<Student>, IStudentService{
    private StudentDAO studentDAO;
    
    public void setStudentDAO(StudentDAO studentDAO) {
        this.studentDAO = studentDAO;
    }
    @Override
    public List<Student> getAll() {
        return this.studentDAO.getAll();
    }

    @Override
    public Student get(int id) {
        return this.studentDAO.get(id);
    }

    @Override
    public boolean add(Student student) {
        return this.studentDAO.add(student);
    }

    @Override
    public Student update(int id, Student student) {
        return this.studentDAO.update(id, student);
    }

    @Override
    public boolean delete(int id) {
       return this.studentDAO.delete(id);
    }
	@Override
	public List<Class> getClasses(int id) {		
		return this.studentDAO.get(id).getClasses();
	}
	@Override
	public boolean removeSubject(int studentId, Class cls) {		
		return this.studentDAO.get(studentId).getClasses().remove(cls);
	}
}
