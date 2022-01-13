package model;

import java.util.Date;

public class Club {
	private int number;
	private String name, president_name;
	private Date date;

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPresident_name() {
		return president_name;
	}

	public void setPresident_name(String president_name) {
		this.president_name = president_name;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Club(int number, String name, String president_name, Date date) {
		super();
		this.number = number;
		this.name = name;
		this.president_name = president_name;
		this.date = date;
	}

}
