package sa47.team11.caps.service;

import java.util.ArrayList;

import sa47.team11.caps.model.*;

public interface StudentService {

	ArrayList<StudentEnrolment> findAllCourses(int userid);
	void CancelCourse(int studentEnrolId);
	User updateStudent(User u);
	User findUser(Integer UserId);
	void editStudent(Integer uid,String passTochange);
	}