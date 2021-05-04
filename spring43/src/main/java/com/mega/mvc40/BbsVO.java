package com.mega.mvc40;

public class BbsVO {
	String id;
	String title;
	String content;
	String writer;
	
	
	@Override
	public String toString() {
		return "BbsVO [id=" + id + ", title=" + title + ", content=" + content + ", writer=" + writer + "]";
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
	
}
