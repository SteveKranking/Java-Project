package com.project.Bracket_Lottery.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.Bracket_Lottery.models.Team;

@Repository 												
public interface TeamRepository extends CrudRepository<Team,Long>{
	// Query methods go here.
	
	// Example:
	// public YourModelHere findByName(String name);

	// If a game only has 4 players
	@Query("SELECT * FROM team WHERE seed = 1")
	Team FindBySeed1(int seed);
	@Query("SELECT * FROM team WHERE seed = 2")
	Team FindBySeed2(int seed);
	@Query("SELECT * FROM team WHERE seed = 3")
	Team FindBySeed3(int seed);
	@Query("SELECT * FROM team WHERE seed = 4")
	Team FindBySeed4(int seed);
	@Query("SELECT * FROM team WHERE seed = 5")
	Team FindBySeed5(int seed);
	@Query("SELECT * FROM team WHERE seed = 6")
	Team FindBySeed6(int seed);
	@Query("SELECT * FROM team WHERE seed = 7")
	Team FindBySeed7(int seed);
	@Query("SELECT * FROM team WHERE seed = 8")
	Team FindBySeed8(int seed);
	@Query("SELECT * FROM team WHERE seed = 9")
	Team FindBySeed9(int seed);
	@Query("SELECT * FROM team WHERE seed = 10")
	Team FindBySeed10(int seed);
	@Query("SELECT * FROM team WHERE seed = 11")
	Team FindBySeed11(int seed);
	@Query("SELECT * FROM team WHERE seed = 12")
	Team FindBySeed12(int seed);
	@Query("SELECT * FROM team WHERE seed = 13")
	Team FindBySeed13(int seed);
	@Query("SELECT * FROM team WHERE seed = 14")
	Team FindBySeed14(int seed);
	@Query("SELECT * FROM team WHERE seed = 15")
	Team FindBySeed15(int seed);	
	@Query("SELECT * FROM team WHERE seed = 16")
	Team FindBySeed16(int seed);

	//If a game has 8 players 
	@Query("SELECT * FROM team WHERE seed = 1 OR seed = 2")
	Team FindBySeed1And2(int seed);
	@Query("SELECT * FROM team WHERE seed = 3 OR seed = 4")
	Team FindBySeed3And4(int seed);
	@Query("SELECT * FROM team WHERE seed = 5 OR seed = 6")
	Team FindBySeed5And6(int seed);
	@Query("SELECT * FROM team WHERE seed = 7 OR seed = 8")
	Team FindBySeed7And8(int seed);
	@Query("SELECT * FROM team WHERE seed = 9 OR seed = 10")
	Team FindBySeed9And10(int seed);
	@Query("SELECT * FROM team WHERE seed = 11 OR seed = 12")
	Team FindBySeed11And12(int seed);
	@Query("SELECT * FROM team WHERE seed = 13 OR seed = 14")
	Team FindBySeed13And14(int seed);
	@Query("SELECT * FROM team WHERE seed = 15 OR seed = 16")
	Team FindBySeed15And16(int seed);
}
