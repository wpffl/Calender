package com.gukje.sch.common;

import java.sql.Date;

public class ContentVO {
	private String id;
    private String nickname; 
    private String type;
    private String title;
    private String content;
    private int startyear;
    private int startmonth;
    private int startday;
    private int starthour;
    private int startminute;
    private int endyear;
    private int endmonth;
    private int endday;
    private int endhour;
    private int endminute;
    private Date regdate;
    private int locker;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getStartyear() {
		return startyear;
	}
	public void setStartyear(int startyear) {
		this.startyear = startyear;
	}
	public int getStartmonth() {
		return startmonth;
	}
	public void setStartmonth(int startmonth) {
		this.startmonth = startmonth;
	}
	public int getStartday() {
		return startday;
	}
	public void setStartday(int startday) {
		this.startday = startday;
	}
	public int getStarthour() {
		return starthour;
	}
	public void setStarthour(int starthour) {
		this.starthour = starthour;
	}
	public int getStartminute() {
		return startminute;
	}
	public void setStartminute(int startminute) {
		this.startminute = startminute;
	}
	public int getEndyear() {
		return endyear;
	}
	public void setEndyear(int endyear) {
		this.endyear = endyear;
	}
	public int getEndmonth() {
		return endmonth;
	}
	public void setEndmonth(int endmonth) {
		this.endmonth = endmonth;
	}
	public int getEndday() {
		return endday;
	}
	public void setEndday(int endday) {
		this.endday = endday;
	}
	public int getEndhour() {
		return endhour;
	}
	public void setEndhour(int endhour) {
		this.endhour = endhour;
	}
	public int getEndminute() {
		return endminute;
	}
	public void setEndminute(int endminute) {
		this.endminute = endminute;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getLocker() {
		return locker;
	}
	public void setLocker(int locker) {
		this.locker = locker;
	}
	@Override
	public String toString() {
		return "ContentVO [id=" + id + ", nickname=" + nickname + ", type=" + type + ", title=" + title + ", content="
				+ content + ", startyear=" + startyear + ", startmonth=" + startmonth + ", startday=" + startday
				+ ", starthour=" + starthour + ", startminute=" + startminute + ", endyear=" + endyear + ", endmonth="
				+ endmonth + ", endday=" + endday + ", endhour=" + endhour + ", endminute=" + endminute + ", regdate="
				+ regdate + ", locker=" + locker + "]";
	}
	
    
}
