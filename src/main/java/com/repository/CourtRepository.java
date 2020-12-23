package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.Court;

public interface CourtRepository extends JpaRepository<Court, Long> {

}
