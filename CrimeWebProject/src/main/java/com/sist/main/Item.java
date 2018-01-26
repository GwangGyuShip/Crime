package com.sist.main;

import javax.xml.bind.annotation.XmlElement;

public class Item {
	private String title;
	private String description;
	private String link;
	private String author;
	
	public String getTitle() {
		return title;
	}
	@XmlElement
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	@XmlElement
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLink() {
		return link;
	}
	@XmlElement
	public void setLink(String link) {
		this.link = link;
	}
	public String getAuthor() {
		return author;
	}
	@XmlElement
	public void setAuthor(String author) {
		this.author = author;
	}
}
