package com.javaex.dao;

public class GuestBookTest {

	public static void main(String[] args) {
		
		GuestBookDao guestBookDao = new GuestBookDao();
		
		GuestVo guestVo = guestBookDao.getGuest(1);
		System.out.println(guestVo.toString());
	}

}
