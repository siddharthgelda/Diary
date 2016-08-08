package com.ibm.internal.assignment.entity.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ibm.internal.assignment.entity.City;
import com.ibm.internal.assignment.entity.Company;

import com.ibm.internal.assignment.repository.CompanyRepository;

@Service
public class CompanyManager {
	@Autowired
	private CompanyRepository companyRepository;

	public Company save(Company company)
	{
		return companyRepository.save(company);
	}

	public Company getCase(Long companyId)
	{
		return companyRepository.getOne(companyId);
	}

public List<Company>  getAllCompany()
{
	return companyRepository.findAll();
}


}
