package com.mega.mvc37.test;

public class TV extends Object{
	int ch;
	String color;
	
	public TV(int ch, String color) {
		this.ch = ch;
		this.color = color;
	}

	@Override
	public String toString() {
		return "TV [ch=" + ch + ", color=" + color + "]";
	}
}
