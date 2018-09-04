package cn.goodym.service;

import java.util.List;

import cn.goodym.entity.Course;


public interface IClzService {

    public List<Course> getAllClz();

    public Course getClzById(Integer id);

    public void update(Course course);

}
