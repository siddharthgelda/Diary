package com.entity.manager;

import com.entity.*;
import com.helper.EmailHelper;
import com.helper.Util;
import com.repository.*;
import com.spec.CaseSpec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.List;

@Service
public class UserDetailManager {

    @Autowired
    EmailHelper emailHelper;

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

    public UserDetail save(CaseSpec caseSpec, User user) throws ParseException {
        UserDetail newcase = new UserDetail();
        newcase.setAdvocate(caseSpec.getAdvocate());
        newcase.setAgainstClient(caseSpec.getAgainstClient());
        newcase.setCaseNo(caseSpec.getCaseNo());
        newcase.setDescripation(caseSpec.getDescripation());
        newcase.setFileNo(caseSpec.getFileNo());
        newcase.setStage(caseSpec.getStage());
        String formate="dd/MM/yyyy";
        if(!StringUtils.isEmpty(caseSpec.getRecivedDate()))
        {
            newcase.setRecivedDate(Util.convert(Util.getDate(caseSpec.getRecivedDate(),formate)));
        }
        if(!StringUtils.isEmpty(caseSpec.getDateOfLoss())) {
            newcase.setDateOfLoss(Util.convert(Util.getDate(caseSpec.getDateOfLoss(), formate)));
        }
        if(!StringUtils.isEmpty(caseSpec.getDeposietDate())) {
            newcase.setDeposietDate(Util.convert(Util.getDate(caseSpec.getDeposietDate(), formate)));
        }
        newcase.setVehicleNo(caseSpec.getVehicleNo());
        newcase.setSubAdvocate(caseSpec.getSubAdvocate());
        newcase.setPolicyNo(caseSpec.getPolicyNo());
        newcase.setDLNo(caseSpec.getDLNo());
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

        java.util.Date parsed = null;
        if(!StringUtils.isEmpty(caseSpec.getNext_Date())) {
            parsed = format.parse(caseSpec.getNext_Date());

            newcase.setNextDate(new Date(parsed.getTime()));
        }
        if(!StringUtils.isEmpty(caseSpec.getPrev_Date())) {
            parsed = format.parse(caseSpec.getPrev_Date());
            newcase.setPrevDate(new Date(parsed.getTime()));
        }
        City c = cityrepo.findOne(caseSpec.getCity());

        newcase.setCity(c);

        Company company = companyrepo.findOne(caseSpec.getCompany());
        newcase.setCompany(company);

        Court court = courtrepo.findOne(caseSpec.getCourt());
        newcase.setCourt(court);
        newcase.setUser(user);
        UserDetail case_persistant = caseRepository.save(newcase);
        System.out.println(case_persistant.toString());
        return case_persistant;
    }

    public List<UserDetail> getAllCase() {
        return caseRepository.findAll();
    }
    public UserDetail getCase(Long id ) {
        return caseRepository.findOne(id);
    }
    public List<UserDetail> getAllCaseBySearch(CaseSpec spec) {
        return caseentitymanager.GetFilterResult(spec);
        //return caseRepository.findAll(spec);
    }

    public UserDetail updateCaseDate(String id, String nextdate, String stage) {
        UserDetail caseentity = caseRepository.getOne(Long.parseLong(id));
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        java.util.Date parsed = null;
        try {
            // parsed = format.parse(nextdate);
            java.sql.Date date = Util.getSqlDate(nextdate);
            /*Calendar cal = Calendar.getInstance();
            cal.setTimeInMillis(parsed.getTime());
            java.sql.Date date = new java.sql.Date(cal.getTimeInMillis());*/
            caseentity.setNextDate(date);
            caseentity.setStage(stage);
            System.out.println("sql date=" + date);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return caseRepository.save(caseentity);
    }

    public boolean sendTodaysCaseEmail() {
        Instant instant = Instant.now();
        java.util.Date todayDate = Date.from(instant);
        System.out.println(todayDate.toString());
        List<UserDetail> list = caseRepository.findByNextDate(todayDate);
        String mailData = Util.createExcelSheet(list);
        emailHelper.sendCaseListEmail(mailData);
        return Boolean.TRUE;
    }
}
