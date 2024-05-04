package com.library.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Student {

	@Id
    
	

	private String studentid;
	private String studentname;
	private long studentmobile;
	private String date;

	private String returnStatus;
	private String cellno;

	public String getCellno() {
		return cellno;
	}

	public void setCellno(String cellno) {
		this.cellno = cellno;
	}

	public String getReturnStatus() {
		return returnStatus;
	}

	public void setReturnStatus(String returnStatus) {
		this.returnStatus = returnStatus;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStudentid() {
		return studentid;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public long getStudentmobile() {
		return studentmobile;
	}

	public void setStudentmobile(long studentmobile) {
		this.studentmobile = studentmobile;
	}

	@Override
	public String toString() {
		return "Studentid=" + studentid + ", studentname=" + studentname + ", studentmobile=" + studentmobile
				+ ", date=" + date + "]";
	}

}
