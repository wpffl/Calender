package com.gukje.sch.schfunction;

public class util {
	
	//2020 1 1 을 2020 01 01 로 변환
	public static String two(String month) {
		return (month.length()<2?"0"+month:month);
	}
}
