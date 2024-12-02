package com.drill.svc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.drill.domain.User;
import com.drill.domain.UserRoleStatus;
import com.drill.domain.repo.UserRepository;

import jakarta.transaction.Transactional;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository; 	// Bean 생성(= 스프링 컨테이너에 객체로 생성)
	
//	userRepository = new UserRepository();
//	@Autowired를 사용하면 스프링 컨테이너에서 위와 같이 객체를 생성해준다.
//	스프링 컨테이너는 클래스임, 위와 같이 객체를 만든 뒤 연결까지 해준다.(Autowired를 사용하면)
//	Bean 생성이라고 함. 스프링 컨테이너에 생성되는 객체를 Bean이라고 함.
//	@Component를 클래스 앞에 붙이면 자동적으로 그 클래스를 컴포넌트에 bean으로 등록하게 만든다.
	
	@Transactional	// 묶음 작업에 대해 일괄적으로 처리 all or nothing(작업 중 하나라도 오류가 나면 전부 원래 상태로 돌림)
	public void join(User user) {
		user.setRole(UserRoleStatus.USER);
		userRepository.save(user);
	}
	
	@Transactional
	public User getUser(String userid) {
		
		User findUser = userRepository
						.findByUserid(userid)
						.orElseGet(() -> new User());
		return findUser;
		
	}
	
}
