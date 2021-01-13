package com.example.au.couchbasedemo.model;

import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.couchbase.core.mapping.Document;
import org.springframework.data.couchbase.core.mapping.Field;

import com.sun.istack.NotNull;

@Document
public class Player {
    
    @Id
    String id;
    
    @NotNull
    @Field
    String name;
    
   
    @Field
    Float average;
    
    @Field
    int runsScored;
    
    @Field
    int wicketsTaken;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getAverage() {
		return average;
	}

	public void setAverage(Float average) {
		this.average = average;
	}

	public int getRunsScored() {
		return runsScored;
	}

	public void setRunsScored(int  runsScored) {
		this.runsScored = runsScored;
	}
	
	public int getWicketsTaken() {
		return wicketsTaken;
	}

	public void getWicketsTaken(int  wicketsTaken) {
		this.wicketsTaken = wicketsTaken;
	}

//	public Date getDate() {
//		return date;
//	}
//
//	public void setDate(Date date) {
//		this.date = date;
//	}
//
//	public String getId() {
//		return id;
//	}

	public Player(String id, String name, Float average, int runsScored, int wicketsTaken) {
		this.id = id;
		this.name = name;
		this.average = average;
		this.runsScored = runsScored;
		this.wicketsTaken = wicketsTaken;
	}
    
    
    
}
