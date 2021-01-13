package com.example.au.couchbasedemo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.au.couchbasedemo.model.Player;
import com.example.au.couchbasedemo.repository.PlayerRepository;

@RestController
public class PlayerController {
    
    @Autowired
    PlayerRepository playerRepository;
    
	/*
	 * @RequestMapping("/") public String index() { return
	 * "Welcome to the CRUD application!!"; }
	 */
    
    @PostMapping("/player")
    public Player addEmployee(@RequestBody Player newPlayer) {
        return playerRepository.save(newPlayer);
    }
    
    @GetMapping("/employee/{id}")
    public Optional<Player> getPlayer(@PathVariable String id) {
        if (playerRepository.existsById(id)) {
            return playerRepository.findById(id);
        } else
            return Optional.empty();
    }
    
    @GetMapping("/player/location/{pincode}")
    public List<Player> getPlayerWithMoreRuns(@PathVariable int totalRuns) {
        List<Player> qualifiedPlayers = new ArrayList<Player>()  ;
        Iterable<Player> players = playerRepository.findAll();
        for(Player player:players)
        {
        	if(player.getRunsScored()>totalRuns)
        		qualifiedPlayers.add(player);
        }
        return qualifiedPlayers;        
    }
    
//    @DeleteMapping("/blogs/topic/{topic}/author/{author}")
//    public List<Employee> deleteByAuthorAndTopic(@PathVariable String topic, @PathVariable String author) {
//        return blogRepository.deleteBytopicAndAuthor(topic, author);
//    }
//    
//    @DeleteMapping("/blogs/{id}")
//    public void deleteById(@PathVariable String id) {
//        blogRepository.deleteById(id);
//    }
    
	/*
	 * @PutMapping("/blogs/{idToBeUpdated}") public String updateBlog(@PathVariable
	 * String idToBeUpdated, @RequestBody BlogsUpdateRequest blogsUpdateRequest) {
	 * 
	 * Optional<Blogs> mayBeBlog = blogRepository.findById(idToBeUpdated) .map(blogs
	 * –> blogRepository .save(Blogs .builder() .id(idToBeUpdated)
	 * .topic(blogsUpdateRequest.getTopic()) .tags(blogsUpdateRequest.getTags())
	 * .author(blogs.getAuthor()) .date(blogs.getDate()) .build()) ); if
	 * (mayBeBlog.isPresent()) { return "Blog Updated"; } else { return
	 * "Blog does not exist"; } }
	 */
}