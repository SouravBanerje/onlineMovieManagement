/*
 * package com.infosys.demo.bean;
 * 
 * import jakarta.persistence.*;
 * 
 * @Entity public class MovieShow {
 * 
 * @EmbeddedId private MovieShowEmbed embeddedId; // Embedded composite key
 * 
 * private Integer royalSeatNumber; private Integer premierSeatNumber; private
 * Integer royalBooked; private Integer premierBooked;
 * 
 * @ManyToOne
 * 
 * @JoinColumn(name = "screen_id", insertable = false, updatable = false)
 * private Screen screen;
 * 
 * public MovieShow() { this.royalBooked = 0; this.premierBooked = 0; }
 * 
 * public MovieShow(MovieShowEmbed embeddedId, Screen screen) { this.embeddedId
 * = embeddedId; this.screen = screen; this.royalBooked = 0; this.premierBooked
 * = 0; }
 * 
 * // Constructor initializing all properties public MovieShow(MovieShowEmbed
 * embeddedId, Integer royalSeatNumber, Integer premierSeatNumber, Integer
 * royalBooked, Integer premierBooked) { this.embeddedId = embeddedId;
 * this.royalSeatNumber = royalSeatNumber; this.premierSeatNumber =
 * premierSeatNumber; this.royalBooked = royalBooked; this.premierBooked =
 * premierBooked; }
 * 
 * // Constructor initializing embeddedId and seat numbers with default booking
 * public MovieShow(MovieShowEmbed embeddedId, Integer royalSeatNumber, Integer
 * premierSeatNumber) { this.embeddedId = embeddedId; this.royalSeatNumber =
 * royalSeatNumber; this.premierSeatNumber = premierSeatNumber; this.royalBooked
 * = 0; this.premierBooked = 0; }
 * 
 * // Getter and setter methods for the embedded composite key public
 * MovieShowEmbed getEmbeddedId() { return embeddedId; }
 * 
 * public void setEmbeddedId(MovieShowEmbed embeddedId) { this.embeddedId =
 * embeddedId; }
 * 
 * public Integer getRoyalSeatNumber() { return royalSeatNumber; }
 * 
 * public void setRoyalSeatNumber(Integer royalSeatNumber) {
 * this.royalSeatNumber = royalSeatNumber; }
 * 
 * public Integer getPremierSeatNumber() { return premierSeatNumber; }
 * 
 * public void setPremierSeatNumber(Integer premierSeatNumber) {
 * this.premierSeatNumber = premierSeatNumber; }
 * 
 * public Integer getRoyalBooked() { return royalBooked; }
 * 
 * public void setRoyalBooked(Integer royalBooked) { this.royalBooked =
 * royalBooked; }
 * 
 * public Integer getPremierBooked() { return premierBooked; }
 * 
 * public void setPremierBooked(Integer premierBooked) { this.premierBooked =
 * premierBooked; }
 * 
 * // Accessor methods for composite key fields public Integer getShowTimeId() {
 * return embeddedId.getShowTimeId(); }
 * 
 * public void setShowTimeId(Integer showTimeId) {
 * embeddedId.setShowTimeId(showTimeId); }
 * 
 * public String getMovieId() { return embeddedId.getMovieId(); }
 * 
 * public void setMovieId(String movieId) { embeddedId.setMovieId(movieId); }
 * 
 * public Long getScreenId() { return screen != null ? screen.getScreen_id() :
 * null; }
 * 
 * // Getter and setter for Screen public Screen getScreen() { return screen; }
 * 
 * public void setScreen(Screen screen) { this.screen = screen; }
 * 
 * @Override public String toString() { return "MovieShow [embeddedId=" +
 * embeddedId + ", royalSeatNumber=" + royalSeatNumber + ", premierSeatNumber="
 * + premierSeatNumber + ", royalBooked=" + royalBooked + ", premierBooked=" +
 * premierBooked + ", screenId=" + getScreenId() + "]"; } }
 */
package com.infosys.onlineMovieManagement.bean;

import jakarta.persistence.*;

@Entity
public class MovieShow {

    @EmbeddedId
    private MovieShowEmbed embeddedId;  // Embedded composite key
    
    private Integer royalSeatNumber;
    private Integer premierSeatNumber;
    private Integer royalBooked;
    private Integer premierBooked;

    
    
    public MovieShow() {
        this.royalBooked = 0;
        this.premierBooked = 0;
    }


    public MovieShow(MovieShowEmbed embeddedId, Integer royalSeatNumber, Integer premierSeatNumber, Integer royalBooked,
                     Integer premierBooked) {
        this.embeddedId = embeddedId;
        this.royalSeatNumber = royalSeatNumber;
        this.premierSeatNumber = premierSeatNumber;
        this.royalBooked = royalBooked;
        this.premierBooked = premierBooked;
    }

    public MovieShow(MovieShowEmbed embeddedId, Integer royalSeatNumber, Integer premierSeatNumber) {
        this.embeddedId = embeddedId;
        this.royalSeatNumber = royalSeatNumber;
        this.premierSeatNumber = premierSeatNumber;
        this.royalBooked = 0;
        this.premierBooked = 0;
    }

    // Getter and setter methods for the embedded composite key
    public MovieShowEmbed getEmbeddedId() {
        return embeddedId;
    }

    public void setEmbeddedId(MovieShowEmbed embeddedId) {
        this.embeddedId = embeddedId;
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

    // Accessor methods for composite key fields
    public Integer getShowTimeId() {
        return embeddedId.getShowTimeId();
    }

    public void setShowTimeId(Integer showTimeId) {
        embeddedId.setShowTimeId(showTimeId);
    }

    public String getMovieId() {
        return embeddedId.getMovieId();
    }

    public void setMovieId(String movieId) {
        embeddedId.setMovieId(movieId);
    }


	@Override
	public String toString() {
		return "MovieShow [embeddedId=" + embeddedId + ", royalSeatNumber=" + royalSeatNumber + ", premierSeatNumber="
				+ premierSeatNumber + ", royalBooked=" + royalBooked + ", premierBooked=" + premierBooked + "]";
	}



 

   
}
