package com.infosys.onlineMovieManagement.bean;

public class MovieShowDTO {
	
	private String showTimeName;

	private String movieId;
	private Integer royalSeatNumber;
	private Integer premierSeatNumber;
	private Integer royalBooked;
	private Integer premierBooked;
	//
	private String theatreName;  // Name of the theatre
    private Integer screenId;    // Screen ID in the theatre
    private String screenName;   // Name of the screen
    private String movieName;    // Name of the movie
    private Integer showTimeId;
    

	
	
	public MovieShowDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MovieShowDTO(String showTimeName, String movieId, Integer royalSeatNumber, Integer premierSeatNumber,
			Integer royalBooked, Integer premierBooked) {
		super();
		this.showTimeName = showTimeName;
		this.movieId = movieId;
		this.royalSeatNumber = royalSeatNumber;
		this.premierSeatNumber = premierSeatNumber;
		this.royalBooked = royalBooked;
		this.premierBooked = premierBooked;
	}
	
	
	
	public MovieShowDTO(String showTimeName, String movieId, Integer royalSeatNumber, Integer premierSeatNumber,
			Integer royalBooked, Integer premierBooked, String theatreName, Integer screenId, String screenName
			) {
		super();
		this.showTimeName = showTimeName;
		this.movieId = movieId;
		this.royalSeatNumber = royalSeatNumber;
		this.premierSeatNumber = premierSeatNumber;
		this.royalBooked = royalBooked;
		this.premierBooked = premierBooked;
		this.theatreName = theatreName;
		this.screenId = screenId;
		this.screenName = screenName;

	}
	public String getShowTimeName() {
		return showTimeName;
	}
	public void setShowTimeName(String showTimeName) {
		this.showTimeName = showTimeName;
	}
	public String getMovieId() {
		return movieId;
	}
	public void setMovieId(String movieId) {
		this.movieId = movieId;
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
	
	
	
	
	
	
	public String getTheatreName() {
		return theatreName;
	}
	public void setTheatreName(String theatreName) {
		this.theatreName = theatreName;
	}
	public Integer getScreenId() {
		return screenId;
	}
	public void setScreenId(Integer screenId) {
		this.screenId = screenId;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	
	public Integer getShowTimeId() {
		return showTimeId;
	}
	public void setShowTimeId(Integer showTimeId) {
		this.showTimeId = showTimeId;
	}
	@Override
	public String toString() {
		return "MovieShowDTO [showTimeName=" + showTimeName + ", movieId=" + movieId + ", royalSeatNumber="
				+ royalSeatNumber + ", premierSeatNumber=" + premierSeatNumber + ", royalBooked=" + royalBooked
				+ ", premierBooked=" + premierBooked + "]";
	}
	
	
}
