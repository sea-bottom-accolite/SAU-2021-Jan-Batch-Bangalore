package com.example.au.couchbasedemo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.au.couchbasedemo.model.Player;

public interface PlayerRepository extends CrudRepository<Player, String> {
	
//	Player findByPincode(String pincode);

//	List deleteBytopicAndAuthor(String title, String author);
	   
}