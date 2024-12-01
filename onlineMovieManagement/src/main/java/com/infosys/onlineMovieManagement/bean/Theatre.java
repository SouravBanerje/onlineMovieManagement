package com.infosys.onlineMovieManagement.bean;

import jakarta.persistence.*;
import java.util.List;

@Entity
public class Theatre {

    @Id
    private Integer theatreId;
    private String name;
    private String location;
    private Integer screens;
    private String imgUrl;

    public Theatre() {}
    

    public Theatre(Integer id) {
		super();
		this.theatreId = id;
	}


	public Theatre(String name, String location, Integer capacity, Integer screens, String imgUrl) {
        this.name = name;
        this.location = location;
        this.imgUrl = imgUrl;
        this.screens = screens;
    }

  

    public Integer getTheatreId() {
		return theatreId;
	}


	public void setTheatreId(Integer theatreId) {
		this.theatreId = theatreId;
	}


	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }


  

    public Integer getScreens() {
        return screens;
    }

    public void setScreens(Integer screens) {
        this.screens = screens;
    }


	public String getImgUrl() {
		return imgUrl;
	}


	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}


	@Override
	public String toString() {
		return "Theatre [theatreId=" + theatreId + ", name=" + name + ", location=" + location + ", screens=" + screens
				+ ", imgUrl=" + imgUrl + "]";
	}

	

}
