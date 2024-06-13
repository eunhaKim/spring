package com.spring.sample.s0613;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//@Data
@Getter
@Setter
//@RequiredArgsConstructor
@AllArgsConstructor
@ToString
public class WebSiteInfor2 {
	private String driver;
	private String url;
	private String user;
	private String password;
//	
//	public WebSiteInfor(String driver, String url, String user, String password) {
//		super();
//		this.driver = driver;
//		this.url = url;
//		this.user = user;
//		this.password = password;
//	}
	
	
}
