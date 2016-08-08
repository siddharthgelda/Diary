package com.ibm.internal.assignment.entity.manager;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spec.CaseSpec;

import com.ibm.internal.assignment.entity.City;
import com.ibm.internal.assignment.entity.Company;
import com.ibm.internal.assignment.entity.Court;
import com.ibm.internal.assignment.entity.User;
import com.ibm.internal.assignment.entity.UserDetail;
import com.ibm.internal.assignment.repository.UserdetailEntityManager;

import com.ibm.internal.assignment.repository.CityRepository;
import com.ibm.internal.assignment.repository.CompanyRepository;
import com.ibm.internal.assignment.repository.CourtRepository;
import com.ibm.internal.assignment.repository.UserDetailRepository;


@Service
public class UserDetailManager {
	@Autowired
	private UserDetailRepository caseRepository;
	
	@Autowired
	private CityRepository cityrepo;
	@Autowired
	private CourtRepository courtrepo;
	@Autowired
	private CompanyRepository companyrepo;
	
	@Autowired
	private UserdetailEntityManager caseentitymanager;

	public UserDetail save(CaseSpec cityspec, User user)
	{
		UserDetail newcase=new UserDetail();
		newcase.setAdvocate(cityspec.getAdvocate());
		newcase.setAgainstClient(cityspec.getAgainstClient());
		newcase.setCaseNo(cityspec.getCaseNo());
		newcase.setDescripation(cityspec.getDescripation());
		newcase.setFileNo(cityspec.getFileNo());
		newcase.setStage(cityspec.getStage());
		
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/YYYY");
		
		java.util.Date parsed=null;
		try {
			parsed = format.parse(cityspec.getNext_Date());
			
			newcase.setNextDate(new Date(parsed.getTime()));
	
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			parsed = format.parse(cityspec.getPrev_Date());
			newcase.setPrevDate(new Date(parsed.getTime()));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		City c=cityrepo.findOne(cityspec.getCity());
		
		newcase.setCity(c);
		
		Company company=companyrepo.findOne(cityspec.getCompany());
		newcase.setCompany(company);
		
		Court court=courtrepo.findOne(cityspec.getCourt());
		newcase.setCourt(court);
		 newcase.setUser(user);
		UserDetail case_persistant=caseRepository.save(newcase);
		System.out.println(case_persistant.toString());
		return case_persistant;
	}

	public UserDetail getCase(Long caseId)
	{
		return caseRepository.getOne(caseId);
	}
	public List<UserDetail>  getAllCase()
	{
		return caseRepository.findAll();
	}
	public List<UserDetail>  getAllCaseBySearch(CaseSpec spec)
	{
		return caseentitymanager.GetFilterResult(spec);
		//return caseRepository.findAll(spec);
	}
	
	public UserDetail updateCaseDate(String id,String nextdate,String stage)
	{
		UserDetail caseentity=caseRepository.getOne(Long.parseLong(id));
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		java.util.Date parsed=null;
		try {
			parsed = format.parse(nextdate);
						Calendar cal = Calendar.getInstance();
						cal.setTimeInMillis(parsed.getTime());
						java.sql.Date date = new java.sql.Date(cal.getTimeInMillis());
						caseentity.setNextDate(date);
						caseentity.setStage(stage);
						System.out.println("sql date=" + date);
					} catch (Exception e) {
						e.printStackTrace();
					}
		
		return caseRepository.save(caseentity);
	}
}