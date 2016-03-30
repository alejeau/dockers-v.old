package com.excilys.formation.computerdb.constants;

public enum Fields {
	NONE (null),
	NAME ("name"),
	INTRO_DATE ("introduced"),
	OUTRO_DATE ("discontinued"),
	COMPANY ("company.name");
	
	private String field = "";
	   
	  Fields(String field){
	    this.field = field;
	  }
	   
	  public String toString(){
	    return field;
	  }
}
