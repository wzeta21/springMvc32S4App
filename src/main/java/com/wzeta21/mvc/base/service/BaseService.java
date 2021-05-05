package com.wzeta21.mvc.base.service;

import java.util.List;

public interface BaseService<T> {
    public List<T> getAll();
    public T get(int id);
    public boolean add(T t);
    public T update(int id, T t);
    public  boolean delete(int id);
}
