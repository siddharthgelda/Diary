package com.ibm.internal.assignment.repository;

import java.sql.Date;
import java.util.List;

import com.ibm.internal.assignment.entity.City;
import com.ibm.internal.assignment.entity.Company;
import com.ibm.internal.assignment.entity.Court;
import org.springframework.data.repository.query.Param;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ibm.internal.assignment.entity.UserDetail;

public interface UserDetailRepository extends JpaRepository<UserDetail, Long> {

    @Query("SELECT p FROM UserDetail p WHERE p.NextDate = (:NextDate)")
    public List<UserDetail> findByNextDate(@Param("NextDate") Date NextDate);

    public List<UserDetail> findByCompany(Company company);

    public List<UserDetail> findByCity(City city);

   public List<UserDetail> findByCourt(Court court);

   public List<UserDetail> findByFileNo(String fileNo);

    public List<UserDetail> findByCaseNo(String caseNo);
}
