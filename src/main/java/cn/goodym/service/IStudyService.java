package cn.goodym.service;

import java.util.List;

import cn.goodym.entity.StudyInfo;


public interface IStudyService {

    public List<StudyInfo> getAllClzByStuId(String stuId);

    public List<StudyInfo> getAllStuByClzId(Integer clzId);

    public void delCourse(String stuId,Integer clzId);

}
