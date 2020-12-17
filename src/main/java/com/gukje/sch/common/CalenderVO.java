package com.gukje.sch.common;

public class CalenderVO {
	private int year;
	private int month;
	private int dayOfWeek;
	private int lastDay;
	private String yyyymm;
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDayOfWeek() {
		return dayOfWeek;
	}
	public void setDayOfWeek(int dayOfWeek) {
		this.dayOfWeek = dayOfWeek;
	}
	public int getLastDay() {
		return lastDay;
	}
	public void setLastDay(int lastDay) {
		this.lastDay = lastDay;
	}
	public String getYyyymm() {
		return yyyymm;
	}
	public void setYyyymm(String yyyymm) {
		this.yyyymm = yyyymm;
	}
	@Override
	public String toString() {
		return "CalenderVO [year=" + year + ", month=" + month + ", dayOfWeek=" + dayOfWeek + ", lastDay=" + lastDay
				+ ", yyyymm=" + yyyymm + "]";
	}
	
	
	
}
