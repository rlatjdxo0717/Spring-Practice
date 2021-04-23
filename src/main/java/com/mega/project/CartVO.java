package com.mega.project;

public class CartVO {
	private String cart_id;
	private String user_id;
	private String product_id;
	private String cart_image;
	private int cart_price;
	private int cart_count;
	
	public String getCart_image() {
		return cart_image;
	}

	public void setCart_image(String cart_image) {
		this.cart_image = cart_image;
	}

	public int getCart_price() {
		return cart_price;
	}

	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}

	public int getCart_count() {
		return cart_count;
	}

	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}

	public String getCart_id() {
		return cart_id;
	}

	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	@Override
	public String toString() {
		return "CartVO [cart_id=" + cart_id + ", user_id=" + user_id + ", product_id=" + product_id + ", cart_price="
				+ cart_price + ", cart_count=" + cart_count + "]";
	}
	
	
}
