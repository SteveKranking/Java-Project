package com.project.Bracket_Lottery.models;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1b;
import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

import com.project.Bracket_Lottery.models.User;
import com.project.Bracket_Lottery.models.Team;


@Entity
public class Game{
	@Id
	@GeneratedValue
	private long id;

	private int maxPlayers;
	private ArrayList<User> winners;
	
	@ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "users_games", 
        joinColumns = @JoinColumn(name = "game_id"), 
        inverseJoinColumns = @JoinColumn(name = "user_id")
    )
	private List<User> players;
	
	// @ManyToMany(fetch = FetchType.LAZY)
    // @JoinTable(
    //     name = "teams_games", 
    //     joinColumns = @JoinColumn(name = "game_id"), 
    //     inverseJoinColumns = @JoinColumn(name = "team_id")
    // )
    // private List<Team> teams;
	
	// Member variables and annotations go here.
	
	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date createdAt;
	
	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date updatedAt;

	@PrePersist
	public void onCreate(){this.createdAt = new Date();}
	@PreUpdate
	public void onUpdate(){this.updatedAt = new Date();}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	// Setters and Getters go here
	
	public Game(){
		this.createdAt = new Date();
		this.updatedAt = new Date();
	}

	public List<User> getPlayers() {
		return players;
	}
	public void setPlayers(List<User> players) {
		this.players = players;
	}
	/**
	 * @return the maxPlayers
	 */
	public int getMaxPlayers() {
		return maxPlayers;
	}
	/**
	 * @param maxPlayers the maxPlayers to set
	 */
	public void setMaxPlayers(int maxPlayers) {
		this.maxPlayers = maxPlayers;
	}
	/**
	 * @return the winners
	 */
	public ArrayList<User> getWinners() {
		return winners;
	}
	/**
	 * @param winners the winners to set
	 */
	public void setWinners(ArrayList<User> winners) {
		this.winners = winners;
	}


	// public List<Team> getTeams() {
	// 	return teams;
	// }
	// public void setTeams(List<Team> teams) {
	// 	this.teams = teams;
	// }

}
