package cn.goodym.dao;

import java.util.List;

import cn.goodym.entity.Course;


public interface IClzDao {

    public List<Course> selectAll();

    public Course selectById(Integer id);

    public void update(Course course);
}
