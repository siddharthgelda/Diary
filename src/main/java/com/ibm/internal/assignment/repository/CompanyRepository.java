package com.ibm.internal.assignment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ibm.internal.assignment.entity.Company;

public interface CompanyRepository extends JpaRepository<Company, Long> {

}
