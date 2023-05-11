package com.example.blog.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.blog.model.User;

// @Repository // 여기서는 생략 가능 
public interface UserRepository extends JpaRepository<User, Integer> {
	// select, selectAll, insert, update, delete 등
}
