package com.sist.freeboard;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	private int board_no; // �Խñ� ��ȣ
	private String board_name; // �г���
	private String board_subject; // ����
	private String board_content; // ����
	private String board_pwd; // ��й�ȣ
	private Date board_regdate; // ��ϳ�¥
	private int board_hit; // ��ȸ��
	private String board_group; // �з�(���Ӹ�)
	private String board_area; // ���� ( OO �� )
	private String board_ip; // ip
	private String board_filename; //���� �̸�
	private String board_filesize; //���� ũ��
	private int board_filecount; // ���� ����
	private List<MultipartFile> files;
	
	
	
	public List<MultipartFile> getFiles() {
		return files;
	}
	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	public String getFilename() {
		return board_filename;
	}
	public void setFilename(String filename) {
		this.board_filename = filename;
	}
	public String getFilesize() {
		return board_filesize;
	}
	public void setFilesize(String filesize) {
		this.board_filesize = filesize;
	}
	public int getFilecount() {
		return board_filecount;
	}
	public void setFilecount(int filecount) {
		this.board_filecount = filecount;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getBoard_subject() {
		return board_subject;
	}
	public void setBoard_subject(String board_subject) {
		this.board_subject = board_subject;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_pwd() {
		return board_pwd;
	}
	public void setBoard_pwd(String board_pwd) {
		this.board_pwd = board_pwd;
	}
	public Date getBoard_regdate() {
		return board_regdate;
	}
	public void setBoard_regdate(Date board_regdate) {
		this.board_regdate = board_regdate;
	}
	public int getBoard_hit() {
		return board_hit;
	}
	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}
	public String getBoard_group() {
		return board_group;
	}
	public void setBoard_group(String board_group) {
		this.board_group = board_group;
	}
	public String getBoard_area() {
		return board_area;
	}
	public void setBoard_area(String board_area) {
		this.board_area = board_area;
	}
	public String getBoard_ip() {
		return board_ip;
	}
	public void setBoard_ip(String board_ip) {
		this.board_ip = board_ip;
	}
	
	
}
