package com.hivershop.model.member;

import java.sql.Date;

public class MemberVO {
	private int seq; // 회원 고유코드
	private String id; // 회원 아이디
	private String name; // 회원 이름
	private String pwd; // 회원 비밀번호
	private Date date; // 회원 가입날짜
	private String email; // 회원 이메일
	private String tel; // 회원 연락처
	private String sample6_postcode;
	private String sample6_address;
	private String sample6_detailAddress;


	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSample6_postcode() {
		return sample6_postcode;
	}

	public void setSample6_postcode(String sample6_postcode) {
		this.sample6_postcode = sample6_postcode;
	}

	public String getSample6_address() {
		return sample6_address;
	}

	public void setSample6_address(String sample6_address) {
		this.sample6_address = sample6_address;
	}

	public String getSample6_detailAddress() {
		return sample6_detailAddress;
	}

	public void setSample6_detailAddress(String sample6_detailAddress) {
		this.sample6_detailAddress = sample6_detailAddress;
	}

	@Override
	public String toString() {
		return "MemberVO{" +
				"seq=" + seq +
				", id='" + id + '\'' +
				", name='" + name + '\'' +
				", pwd='" + pwd + '\'' +
				", date=" + date +
				", email='" + email + '\'' +
				", tel='" + tel + '\'' +
				", sample6_postcode='" + sample6_postcode + '\'' +
				", sample6_address='" + sample6_address + '\'' +
				", sample6_detailAddress='" + sample6_detailAddress + '\'' +
				'}';
	}
}
