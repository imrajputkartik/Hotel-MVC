package com.hotel.model;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
public class Booking {

	@Id
	private int roomNo; // 🔥 PRIMARY KEY

	private String name;
	private String gender;
	private int members;
	private String address;
	private String state;
	private String nationality;
	private String adharNo;
	private String mobile;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Date checkIn;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Date checkOut;

	public Booking() {
	}

	public Booking(int roomNo, String name, String gender, int members, String address, String state,
			String nationality, String adharNo, String mobile, Date checkIn, Date checkOut) {

		this.roomNo = roomNo;
		this.name = name;
		this.gender = gender;
		this.members = members;
		this.address = address;
		this.state = state;
		this.nationality = nationality;
		this.adharNo = adharNo;
		this.mobile = mobile;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getMembers() {
		return members;
	}

	public void setMembers(int members) {
		this.members = members;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getAdharNo() {
		return adharNo;
	}

	public void setAdharNo(String adharNo) {
		this.adharNo = adharNo;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Date getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}

	public Date getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}

}