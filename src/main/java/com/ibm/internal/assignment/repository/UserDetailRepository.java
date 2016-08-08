package com.ibm.internal.assignment.repository;

import java.sql.Date;
import java.util.List;
import org.springframework.data.repository.query.Param;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ibm.internal.assignment.entity.UserDetail;

public interface UserDetailRepository extends JpaRepository<UserDetail, Long> {
	@Query("SELECT p FROM UserDetail p WHERE p.NextDate = (:NextDate)")
	public List<UserDetail> findBynextDate(@Param("NextDate") Date NextDate);
}
