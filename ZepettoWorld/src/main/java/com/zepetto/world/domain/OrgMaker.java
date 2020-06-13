package com.zepetto.world.domain;

import java.io.Serializable;

public class OrgMaker implements Serializable {
	private static final long serialVersionUID = 1L;

	private String id;
	private String name;
	private String pid;
	
	public OrgMaker() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

}