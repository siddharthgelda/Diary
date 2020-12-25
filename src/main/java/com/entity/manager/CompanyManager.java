package com.entity.manager;

import com.entity.Company;
import com.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
