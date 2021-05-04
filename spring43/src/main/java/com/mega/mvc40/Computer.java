package com.mega.mvc40;

public class Computer extends Object{
	String a;
	String b;
	String c;

	public Computer(String a, String b, String c) {
		super();
		this.a = a;
		this.b = b;
		this.c = c;
	}

	@Override
	public String toString() {
		return "Computer [a=" + a + ", b=" + b + ", c=" + c + "]";
	}

}