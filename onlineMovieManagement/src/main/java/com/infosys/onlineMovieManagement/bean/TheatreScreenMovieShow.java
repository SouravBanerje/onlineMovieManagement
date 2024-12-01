package com.infosys.onlineMovieManagement.bean;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class TheatreScreenMovieShow {

    @EmbeddedId
    private TheatreScreenMovieShowEmbed embeddedId; // Combined composite key class
    private Integer royalSeatNumber;
    private Integer premierSeatNumber;
    private Integer royalBooked;
    private Integer premierBooked;
    

    // Default constructor
    public TheatreScreenMovieShow() {
    	this.royalBooked = 0;
        this.premierBooked = 0;
    }

    // Constructor with combined embedded ID
    public TheatreScreenMovieShow(TheatreScreenMovieShowEmbed embeddedId) {
        this.embeddedId = embeddedId;
    }
    
    

    public TheatreScreenMovieShow(TheatreScreenMovieShowEmbed embeddedId, Integer royalSeatNumber,
			Integer premierSeatNumber) {
		super();
		this.embeddedId = embeddedId;
		this.royalSeatNumber = royalSeatNumber;
		this.premierSeatNumber = premierSeatNumber;
	
	}

	public Integer getRoyalSeatNumber() {
		return royalSeatNumber;
	}

	public void setRoyalSeatNumber(Integer royalSeatNumber) {
		this.royalSeatNumber = royalSeatNumber;
	}

	public Integer getPremierSeatNumber() {
		return premierSeatNumber;
	}

	public void setPremierSeatNumber(Integer premierSeatNumber) {
		this.premierSeatNumber = premierSeatNumber;
	}

	public Integer getRoyalBooked() {
		return royalBooked;
	}

	public void setRoyalBooked(Integer royalBooked) {
		this.royalBooked = royalBooked;
	}

	public Integer getPremierBooked() {
		return premierBooked;
	}

	public void setPremierBooked(Integer premierBooked) {
		this.premierBooked = premierBooked;
	}

	public TheatreScreenMovieShowEmbed getEmbeddedId() {
        return embeddedId;
    }

    public void setEmbeddedId(TheatreScreenMovieShowEmbed embeddedId) {
        this.embeddedId = embeddedId;
    }
    
    public MovieShowEmbed getMovieShowEmbed() {
        return embeddedId != null ? embeddedId.getMovieShowEmbed() : null;
    }
    
    public TheatreScreenEmbed getTheatreScreenEmbed() {
        return embeddedId != null ? embeddedId.getTheatreScreenEmbed() : null;
    }


	

	@Override
    public String toString() {
        return "TheatreScreenMovieShow [embeddedId=" + embeddedId + "]";
    }
	
}
