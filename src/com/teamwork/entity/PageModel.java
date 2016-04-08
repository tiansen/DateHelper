package com.teamwork.entity;

import java.util.List;

public class PageModel {

	private int allLine;//所有行数
	private int onLine;//前一行
	private int nextLine;//后一行
	
	private List entityList;//所有记录
	public int getAllLine() {
		return allLine;
	}
	public void setAllLine(int allLine) {
		this.allLine = allLine;
	}
	public int getOnLine() {
		return onLine;
	}
	public void setOnLine(int onLine) {
		this.onLine = onLine;
	}
	public int getNextLine() {
		return nextLine;
	}
	public void setNextLine(int nextLine) {
		this.nextLine = nextLine;
	}
	public List getEntityList() {
		return entityList;
	}
	public void setEntityList(List entityList) {
		this.entityList = entityList;
	}
	
}
