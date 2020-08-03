package com.ibm.internal.assignment.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "case")
public class Case2 {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    String CaseNo;
    // String AgainstClient;
    // String Advocate;
    // String Stage; 
    //String FileNo;
    //String Descripation;
    //private String Data;
    //private Date PrevDate;
    //private Date NextDate;

    /*@ManyToOne
	private User user;
	@ManyToOne
	private Company company;*/
 /*	@ManyToOne
	private City city;
	@ManyToOne
	private Court court;
     */
    public Case2() {
        super();
    }

    public Case2(Long id, String caseNo, String againstClient, String advocate, String stage, String fileNo,
            String descripation, String data, Date prev_Date, Date next_Date) {
        super();
        this.id = id;
        CaseNo = caseNo;
        //AgainstClient = againstClient;
        //Advocate = advocate;
        //Stage = stage;
        //FileNo = fileNo;
        //Descripation = descripation;
        //Data = data;
        //PrevDate = prev_Date;
        //NextDate = next_Date;
    }

    public Case2(Long id, String caseNo, String againstClient, String advocate, String stage, String fileNo,
            String descripation, String data, Date prev_Date, Date next_Date, User user, Company company, City city,
            Court court) {
        super();
        this.id = id;
        CaseNo = caseNo;
        //AgainstClient = againstClient;
        //Advocate = advocate;
        //Stage = stage;
        //FileNo = fileNo;
        //Descripation = descripation;
        //Data = data;
        //PrevDate = prev_Date;
        //NextDate = next_Date;
        //this.user = user;
        //this.company = company;
        //this.city = city;
        //this.court = court;
    }

    /*public User getUser() {
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
     */

 /*public City getCity() {
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
	}*/
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCaseNo() {
        return CaseNo;
    }

    public void setCaseNo(String caseNo) {
        CaseNo = caseNo;
    }

    /*public String getAgainstClient() {
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
	}*/
 /*public String getData() {
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

	public void setNext_Date(Date next_Date) {
		NextDate = next_Date;
	}*/

    @Override
    public String toString() {
        return "Case [id=" + id + ", CaseNo=" + CaseNo + "]";
    }

}
