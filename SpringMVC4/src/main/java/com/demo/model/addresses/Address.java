package com.demo.model.addresses;

import org.springframework.stereotype.Component;

@Component
public class Address {

	String address = "Default address";

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
