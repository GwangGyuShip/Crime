package com.sist.crimerate;

public class CrimeRateVO {
	private int c_year;
	private String c_gu;
	private String c_name;
	private String c_type;
	private int c_count;
	private int c_cam;
	private int total;
	private double average;
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public double getAverage() {
		return average;
	}
	public void setAverage(double average) {
		this.average = average;
	}
	public int getC_year() {
		return c_year;
	}
	public void setC_year(int c_year) {
		this.c_year = c_year;
	}
	public String getC_gu() {
		return c_gu;
	}
	public void setC_gu(String c_gu) {
		this.c_gu = c_gu;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	public int getC_count() {
		return c_count;
	}
	public void setC_count(int c_count) {
		this.c_count = c_count;
	}
	public int getC_cam() {
		return c_cam;
	}
	public void setC_cam(int c_cam) {
		this.c_cam = c_cam;
	} 
}
