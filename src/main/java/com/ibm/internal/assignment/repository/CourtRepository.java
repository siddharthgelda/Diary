package com.ibm.internal.assignment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ibm.internal.assignment.entity.Court;
import com.ibm.internal.assignment.entity.User;

public interface CourtRepository extends JpaRepository<Court, Long> {

}
