package com.entity.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Company;

import com.repository.CompanyRepository;

@Service
public class CompanyManager {

    @Autowired
    private CompanyRepository companyRepository;

    public Company save(Company company) {
        return companyRepository.save(company);
    }

    public Company getCompanyById(Long companyId) {
        return companyRepository.getOne(companyId);
    }

    public List<Company> getAllCompany() {
        return companyRepository.findAll();
    }

}
