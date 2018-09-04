package cn.goodym.service.Impl;

import cn.goodym.dao.IClzDao;
import cn.goodym.entity.Course;
import cn.goodym.service.IClzService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ClzService implements IClzService {

    @Autowired
    private IClzDao clzDao;

    @Override
    public List<Course> getAllClz() {
        return clzDao.selectAll();
    }

    @Override
    public Course getClzById(Integer id) {
        return clzDao.selectById(id);
    }

    @Override
    public void update(Course course) {
        clzDao.update(course);
    }
}
