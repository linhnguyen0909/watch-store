package com.poly.spring.dto;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashMap;

public class OrderDto implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer customerId;
	private Integer paymentTypeId;
	private String note;
	private Timestamp createDate;
	private Integer status;
	private HashMap<Integer, OrderDetailDto> listDetail = new HashMap<>();

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public Integer getPaymentTypeId() {
		return paymentTypeId;
	}

	public void setPaymentTypeId(Integer paymentTypeId) {
		this.paymentTypeId = paymentTypeId;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Timestamp getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public HashMap<Integer, OrderDetailDto> getListDetail() {
		return listDetail;
	}

	public void setListDetail(HashMap<Integer, OrderDetailDto> listDetail) {
		this.listDetail = listDetail;
	}

}
