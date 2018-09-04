package cn.goodym.service.Impl;

import cn.goodym.dao.IStudyInfoDao;
import cn.goodym.entity.StudyInfo;
import cn.goodym.service.IStudyService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class StudyService implements IStudyService {

    @Autowired
    private IStudyInfoDao studyInfoDao;

    @Override
    public List<StudyInfo> getAllClzByStuId(String stuId) {
        return studyInfoDao.selectByStuId(stuId);
    }

    @Override
    public List<StudyInfo> getAllStuByClzId(Integer clzId) {
        return studyInfoDao.selectByClzId(clzId);
    }

    @Override
    public void delCourse(String stuId, Integer clzId) {
        studyInfoDao.delete(stuId,clzId);
    }
}
