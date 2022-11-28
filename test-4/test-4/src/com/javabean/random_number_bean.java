package com.javabean;

public class random_number_bean {
	public int random() {
		int s = (int)Math.round(Math.random()*1000000000);
		return s;
	}
}
