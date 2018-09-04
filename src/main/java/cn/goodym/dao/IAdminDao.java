package cn.goodym.dao;

import java.util.List;

import cn.goodym.entity.Admin;
import cn.goodym.entity.Course;
import cn.goodym.entity.Student;
import cn.goodym.entity.StudyInfo;

public interface IAdminDao {

    public Admin selectById(String id);

    public List<Student> selectAllStudents();

    public List<Course> selectAllCourses();

    public void updateStudent(Student student);

    public Student selectStuById(String id);

    public void addStudent(Student student);

    public void delStudent(String id);

    public void addCourse(Course course);

    public void delCourse(Integer id);

    public List<StudyInfo> selectAllStudyInfo();

    public void addStudyInfo(StudyInfo studyInfo);

    public void delStudyInfo(Integer id);

    public StudyInfo selectById(Integer id);

    public void delStudyInfoByCId(Integer id);

    public void delStudyInfoBySId(String id);
}
