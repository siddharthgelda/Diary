package com.ibm.internal.assignment.entity.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.internal.assignment.entity.Company;
import com.ibm.internal.assignment.entity.Court;
import com.ibm.internal.assignment.repository.CompanyRepository;
import com.ibm.internal.assignment.repository.CourtRepository;

@Service
public class CourtManager {

    @Autowired
    private CourtRepository courtRepository;

    public Court save(Court court) {
        return courtRepository.save(court);
    }

    public Court getCase(Long courtId) {
        return courtRepository.getOne(courtId);
    }

    public List<Court> getAllCourt() {
        return courtRepository.findAll();
    }

}
