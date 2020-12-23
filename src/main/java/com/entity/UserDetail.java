package com.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "userdetail")
public class UserDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private User user;
    @ManyToOne
    private Company company;
    @ManyToOne
    private City city;
    @ManyToOne
    private Court court;
    String caseNo;
    String AgainstClient;
    String Advocate;
    String Stage;
    String fileNo;
    String Descripation;
    private String Data;
    private Date PrevDate;
    @Column(name = "nextDate")
    private Date NextDate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCaseNo() {
        return caseNo;
    }

    public void setCaseNo(String caseNo) {
        this.caseNo = caseNo;
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
        return fileNo;
    }

    public void setFileNo(String fileNo) {
        this.fileNo = fileNo;
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

    public Date getPrevDate() {
        return PrevDate;
    }

    public void setPrevDate(Date prevDate) {
        PrevDate = prevDate;
    }

    public Date getNextDate() {
        return NextDate;
    }

    public void setNextDate(Date nextDate) {
        NextDate = nextDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public Court getCourt() {
        return court;
    }

    public void setCourt(Court court) {
        this.court = court;
    }

}
