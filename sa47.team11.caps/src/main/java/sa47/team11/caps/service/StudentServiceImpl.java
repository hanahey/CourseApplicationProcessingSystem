package sa47.team11.caps.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sa47.team11.caps.model.*;

import sa47.team11.caps.repository.*;
import sa47.team11.caps.service.*;

@Service
public class StudentServiceImpl implements StudentService {

	@Resource
	StudentEnrolRepository srepo;
	@Resource
	UserRepository urepo;

	@Override
	@Transactional
	public ArrayList<StudentEnrolment> findAllCourses(int userId) {
		return (ArrayList<StudentEnrolment>) srepo.findAllCourses(userId);

	}

	@Transactional
	@Override
	public void CancelCourse(int studentEnrolId) {
		srepo.CancelCourse(studentEnrolId, "cancelled");

	}

	@Override
	@Transactional
	public User updateStudent(User u) {
		return urepo.saveAndFlush(u);
	}

	@Override
	@Transactional
	public User findUser(Integer UserId) {
		System.out.println("UserId" + UserId);
		User student = urepo.findById(UserId).get();
		System.out.println(student.toString());
		return student;
	}

	@Override
	@Transactional
	public void editStudent(Integer uid, String passTochange) {
		urepo.editStudent(uid, passTochange);
	}

}