package com.services;

import com.helper.Util;
import com.ibm.internal.assignment.entity.City;
import com.ibm.internal.assignment.entity.Company;
import com.ibm.internal.assignment.entity.Court;
import com.ibm.internal.assignment.entity.UserDetail;
import com.ibm.internal.assignment.entity.manager.CityManager;
import com.ibm.internal.assignment.entity.manager.CompanyManager;
import com.ibm.internal.assignment.entity.manager.CourtManager;
import com.ibm.internal.assignment.entity.manager.UserDetailManager;
import com.ibm.internal.assignment.repository.UserDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.text.ParseException;
import java.util.List;

@Service
public class UpdateCaseService {
    @Autowired
    UserDetailManager casemanager;
    @Autowired
    private UserDetailRepository caseRepository;

    @Autowired
    private CityManager cityManager;

    @Autowired
    CompanyManager companyManager;

    @Autowired
    CourtManager courtManager;


    public List<UserDetail> getCases(HttpServletRequest request, ModelAndView modelAndView) throws ParseException {
       String searchDateStr= request.getParameter("currentdate");
       String companyID= request.getParameter ("companySearch");
        String cityID= request.getParameter ("citySearch");
        String courtID= request.getParameter ("courtSearch");
        String fileNo= request.getParameter ("FileNo");
        String caseNo= request.getParameter ( "caseNo");

       if(!StringUtils.isEmpty(searchDateStr))
       {
           modelAndView.addObject("selectDate",searchDateStr);
           Date searchDate= Util.getSqlDate(searchDateStr);
           return caseRepository.findByNextDate(searchDate);
       }
       if(!StringUtils.isEmpty(companyID))
       {modelAndView.addObject("selectedCmdId",companyID);
           Company company = companyManager.getCompanyById(Long.parseLong(companyID));
           return caseRepository.findByCompany(company);
       }
        if(!StringUtils.isEmpty(cityID))
        {modelAndView.addObject("selectedCtyId",cityID);
            City city = cityManager.getCity(Long.parseLong(cityID));
            return caseRepository.findByCity(city);
        }
        if(!StringUtils.isEmpty(courtID))
        {modelAndView.addObject("selectedCourtId",courtID);
            Court court =  courtManager.getCase(Long.parseLong(courtID));
            return caseRepository.findByCourt(court);
        }
        if(!StringUtils.isEmpty(fileNo))
        {modelAndView.addObject("selectedFileNo",fileNo);

            return caseRepository.findByFileNo(fileNo);
        }
        if(!StringUtils.isEmpty(caseNo))
        {modelAndView.addObject("selectedCaseNo",caseNo);

            return caseRepository.findByCaseNo(caseNo);
        }
       return caseRepository.findAll();

    }
}
