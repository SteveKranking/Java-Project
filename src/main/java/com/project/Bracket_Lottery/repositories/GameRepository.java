package com.project.Bracket_Lottery.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.Bracket_Lottery.models.Game;

@Repository 												
public interface GameRepository extends CrudRepository<Game,Long>{
	// Query methods go here.
	
	// Example:
	// public YourModelHere findByName(String name);
}
