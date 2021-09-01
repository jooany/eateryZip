package com.sixnicorn.eateryzip.user.dto;

public class TakeoutDto {
	private int takeout_num;
	private String g_id;
	private String b_id;
	private String takeout_name;
	private String takeout_date;
	private String takeout_time;
	private String takeout_phone;
	private String takeout_memo;
	private String takeout_menu;
	private int takeout_count;
	private int takeout_price;
	private String b_name;
	
	public TakeoutDto() {}

	public TakeoutDto(int takeout_num, String g_id, String b_id, String takeout_name, String takeout_date,
			String takeout_time, String takeout_phone, String takeout_memo, String takeout_menu, int takeout_count,
			int takeout_price, String b_name) {
		super();
		this.takeout_num = takeout_num;
		this.g_id = g_id;
		this.b_id = b_id;
		this.takeout_name = takeout_name;
		this.takeout_date = takeout_date;
		this.takeout_time = takeout_time;
		this.takeout_phone = takeout_phone;
		this.takeout_memo = takeout_memo;
		this.takeout_menu = takeout_menu;
		this.takeout_count = takeout_count;
		this.takeout_price = takeout_price;
		this.b_name = b_name;
	}

	public int getTakeout_num() {
		return takeout_num;
	}

	public void setTakeout_num(int takeout_num) {
		this.takeout_num = takeout_num;
	}

	public String getG_id() {
		return g_id;
	}

	public void setG_id(String g_id) {
		this.g_id = g_id;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public String getTakeout_name() {
		return takeout_name;
	}

	public void setTakeout_name(String takeout_name) {
		this.takeout_name = takeout_name;
	}

	public String getTakeout_date() {
		return takeout_date;
	}

	public void setTakeout_date(String takeout_date) {
		this.takeout_date = takeout_date;
	}

	public String getTakeout_time() {
		return takeout_time;
	}

	public void setTakeout_time(String takeout_time) {
		this.takeout_time = takeout_time;
	}

	public String getTakeout_phone() {
		return takeout_phone;
	}

	public void setTakeout_phone(String takeout_phone) {
		this.takeout_phone = takeout_phone;
	}

	public String getTakeout_memo() {
		return takeout_memo;
	}

	public void setTakeout_memo(String takeout_memo) {
		this.takeout_memo = takeout_memo;
	}

	public String getTakeout_menu() {
		return takeout_menu;
	}

	public void setTakeout_menu(String takeout_menu) {
		this.takeout_menu = takeout_menu;
	}

	public int getTakeout_count() {
		return takeout_count;
	}

	public void setTakeout_count(int takeout_count) {
		this.takeout_count = takeout_count;
	}

	public int getTakeout_price() {
		return takeout_price;
	}

	public void setTakeout_price(int takeout_price) {
		this.takeout_price = takeout_price;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}


	
	
	

}
