package com.wzeta21.mvc.base.service;
import com.wzeta21.mvc.base.model.Class;
import java.util.List;

public interface IStudentService {
	List<Class> getClasses(int id);
}
