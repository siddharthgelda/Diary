package com.repository;

import java.util.Date;
import java.util.List;

import com.entity.City;
import com.entity.Company;
import com.entity.Court;
import org.springframework.data.repository.query.Param;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.entity.UserDetail;

public interface UserDetailRepository extends JpaRepository<UserDetail, Long> {

    @Query("SELECT p FROM UserDetail p WHERE p.NextDate = (:NextDate)")
    public List<UserDetail> findByNextDate(@Param("NextDate") Date NextDate);

    public List<UserDetail> findByCompany(Company company);

    public List<UserDetail> findByCity(City city);

   public List<UserDetail> findByCourt(Court court);

   public List<UserDetail> findByFileNo(String fileNo);

    public List<UserDetail> findByCaseNo(String caseNo);
}
