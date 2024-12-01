package com.infosys.onlineMovieManagement.bean;

import jakarta.persistence.*;

@Entity
public class Screen {

    @Id
    private Integer screen_id;  // The unique identifier for the screen

    private String screenName;  // Name of the screen (e.g., IMAX, 2D)

    // Default constructor
    public Screen() {}
    
    

    public Screen(Integer screen_id) {
		super();
		this.screen_id = screen_id;
	}



	// Constructor to initialize screenName
    public Screen(String screenName) {
        this.screenName = screenName;
    }

    // Getter and setter for screen_id
    public Integer getScreen_id() {
        return screen_id;
    }

    public void setScreen_id(Integer screen_id) {
        this.screen_id = screen_id;
    }

    // Getter and setter for screenName
    public String getScreenName() {
        return screenName;
    }

    public void setScreenName(String screenName) {
        this.screenName = screenName;
    }

    @Override
    public String toString() {
        return "Screen [screen_id=" + screen_id + ", screenName=" + screenName + "]";
    }
}
