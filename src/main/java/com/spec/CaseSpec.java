package com.spec;

import java.sql.Date;

import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;

import com.ibm.internal.assignment.entity.City;
import com.ibm.internal.assignment.entity.Company;
import com.ibm.internal.assignment.entity.Court;
import com.ibm.internal.assignment.entity.User;

@Component
public class CaseSpec {

    private String CaseNo;
    private String AgainstClient;
    private String Advocate;
    private String Stage;
    private String FileNo;
    private String Descripation;
    private String Data;
    private String Prev_Date;
    private String Next_Date;

    private Long company;

    private Long city;

    private Long court;

    public String getCaseNo() {
        return CaseNo;
    }

    public void setCaseNo(String caseNo) {
        CaseNo = caseNo;
    }

    public String getAgainstClient() {
        return AgainstClient;
    }

    public void setAgainstClient(String againstClient) {
        AgainstClient = againstClient;
    }

    public String getAdvocate() {
        return Advocate;
    }

    public void setAdvocate(String advocate) {
        Advocate = advocate;
    }

    public String getStage() {
        return Stage;
    }

    public void setStage(String stage) {
        Stage = stage;
    }

    public String getFileNo() {
        return FileNo;
    }

    public void setFileNo(String fileNo) {
        FileNo = fileNo;
    }

    public String getDescripation() {
        return Descripation;
    }

    public void setDescripation(String descripation) {
        Descripation = descripation;
    }

    public String getData() {
        return Data;
    }

    public void setData(String data) {
        Data = data;
    }

    public String getPrev_Date() {
        return Prev_Date;
    }

    public void setPrev_Date(String prev_Date) {
        Prev_Date = prev_Date;
    }

    public String getNext_Date() {
        return Next_Date;
    }

    public void setNext_Date(String next_Date) {
        Next_Date = next_Date;
    }

    public Long getCompany() {
        return company;
    }

    public void setCompany(Long company) {
        this.company = company;
    }

    public Long getCity() {
        return city;
    }

    public void setCity(Long city) {
        this.city = city;
    }

    public Long getCourt() {
        return court;
    }

    public void setCourt(Long court) {
        this.court = court;
    }

    @Override
    public String toString() {
        return "CaseSpec [CaseNo=" + CaseNo + ", AgainstClient=" + AgainstClient + ", Advocate=" + Advocate + ", Stage="
                + Stage + ", FileNo=" + FileNo + ", Descripation=" + Descripation + ", Data=" + Data + ", Prev_Date="
                + Prev_Date + ", Next_Date=" + Next_Date + ", company=" + company + ", city=" + city + ", court="
                + court + "]";
    }

}
