package com.project.Bracket_Lottery.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.project.Bracket_Lottery.models.Game;
import com.project.Bracket_Lottery.models.User;

import com.project.Bracket_Lottery.repositories.GameRepository;


@Service
public class GameService {
	// Member variables / service initializations go here

	private GameRepository _gr;
		
	public GameService(GameRepository _gr){

		this._gr = _gr;

		public void addPlayer(Long id, User user) {
			Game thisGame = _gr.findOne(id);
			// List<User> likes = post.getLikes();
			List<User> players = thisGame.getPlayers();
			// likes.add(user);
			players.add(user);
			// post.setLikes(likes);
			thisGame.setPlayers(players);
			_gr.save(thisGame);
		}

	}
	
	// Crud methods to act on services go here.
}
