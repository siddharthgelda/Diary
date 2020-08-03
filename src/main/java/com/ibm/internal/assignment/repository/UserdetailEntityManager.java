package com.ibm.internal.assignment.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;

import org.springframework.stereotype.Service;

import com.ibm.internal.assignment.entity.UserDetail;
import com.spec.CaseSpec;

import javax.persistence.criteria.*;

@Service
public class UserdetailEntityManager {

    @PersistenceContext
    private EntityManager entityManager;

    public List<UserDetail> GetFilterResult(CaseSpec spec) {

        String strquery = "select c from UserDetail c where ";

        boolean isfirstcase = false;
        if (spec.getFileNo() != null && spec.getFileNo().trim().length() > 0) {
            strquery = strquery + "FileNo=" + spec.getFileNo();
            isfirstcase = true;
        }

        if (spec.getCaseNo() != null && spec.getCaseNo().trim().length() > 0) {
            if (isfirstcase) {
                strquery = strquery + " and ";
            }
            isfirstcase = true;
            strquery = strquery + "CaseNo=" + spec.getCaseNo();

        }
        if (spec.getAgainstClient() != null && spec.getAgainstClient().trim().length() > 0) {
            if (isfirstcase) {
                strquery = strquery + " and ";
            }
            isfirstcase = true;
            strquery = strquery + "AgainstClient=" + spec.getAgainstClient();
        }
        if (spec.getPrev_Date() != null && spec.getPrev_Date().trim().length() > 0) {
            if (isfirstcase) {
                strquery = strquery + " and ";
            }
            isfirstcase = true;
            strquery = strquery + "PrevDate='" + spec.getPrev_Date() + "'";

        }
        if (spec.getNext_Date() != null && spec.getNext_Date().trim().length() > 0) {
            if (isfirstcase) {
                strquery = strquery + " and ";
            }
            isfirstcase = true;
            strquery = strquery + "NextDate='" + spec.getNext_Date() + "'";
        }
        if (spec.getCourt() != null && spec.getCourt() > 0) {
            if (isfirstcase) {
                strquery = strquery + " and ";
            }
            isfirstcase = true;
            strquery = strquery + "court_id=" + spec.getCourt();
        }
        if (spec.getCity() != null && spec.getCourt() > 0) {
            if (isfirstcase) {
                strquery = strquery + " and ";
            }
            isfirstcase = true;
            strquery = strquery + "city_id=" + spec.getCity();
        }
        if (spec.getCompany() != null && spec.getCourt() > 0) {
            if (isfirstcase) {
                strquery = strquery + " and ";
            }
            isfirstcase = true;
            strquery = strquery + "company_Id=" + spec.getCompany();
        }
        //strquery=strquery+";";

        System.out.println("query=" + strquery);
        TypedQuery<UserDetail> query
                = entityManager.createQuery(strquery, UserDetail.class);

        List<UserDetail> cases = query.getResultList();
        return cases;
    }
}
