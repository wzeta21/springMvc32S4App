package com.wzeta21.mvc.base.dao;

import java.util.List;

public interface BaseDAO<T> {
    public List<T> getAll();
    public T get(int id);
    public boolean add(T t);
    public T update(int id, T t);
    public  boolean delete(int id);
}
