package com.infosys.onlineMovieManagement.bean;

public class TheatreScreenMovieShowDTO {

	private String theatreName;
	private String theatreImg;
	private Integer screenId;
	private Integer theatreId;
	private String screenName;
	private String movieName;
	private String movieId;
	private String showTimeName;
    private Integer royalSeatNumber;
    private Integer premierSeatNumber;
    private Integer royalBooked;
    private Integer premierBooked;
	public TheatreScreenMovieShowDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public TheatreScreenMovieShowDTO(String theatreName,String theatreImg, Integer screenId, Integer theatreId, String screenName,
			String movieName, String showTimeName) {
		super();
		this.theatreName = theatreName;
		this.theatreImg = theatreImg;
		this.screenId = screenId;
		this.theatreId = theatreId;
		this.screenName = screenName;
		this.movieName = movieName;
		this.showTimeName = showTimeName;
	}



	 public TheatreScreenMovieShowDTO(String showTimeName, String movieId, int royalSeatNumber,
             int premierSeatNumber, int royalBooked, int premierBooked,
             String theatreName, String screenName) {
this.showTimeName = showTimeName;
this.movieId = movieId;
this.royalSeatNumber = royalSeatNumber;
this.premierSeatNumber = premierSeatNumber;
this.royalBooked = royalBooked;
this.premierBooked = premierBooked;
this.theatreName = theatreName;
this.screenName = screenName;
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
	public String getShowTimeName() {
		return showTimeName;
	}
	public void setShowTimeName(String showTimeName) {
		this.showTimeName = showTimeName;
	}
	
	
	public Integer getTheatreId() {
		return theatreId;
	}



	public void setTheatreId(Integer theatreId) {
		this.theatreId = theatreId;
	}



	public String getTheatreImg() {
		return theatreImg;
	}



	public void setTheatreImg(String theatreImg) {
		this.theatreImg = theatreImg;
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



	@Override
	public String toString() {
		return "TheatreScreenMovieShowDTO [theatreName=" + theatreName + ", theatreImg=" + theatreImg + ", screenId="
				+ screenId + ", theatreId=" + theatreId + ", screenName=" + screenName + ", movieName=" + movieName
				+ ", showTimeName=" + showTimeName + ", royalSeatNumber=" + royalSeatNumber + ", premierSeatNumber="
				+ premierSeatNumber + ", royalBooked=" + royalBooked + ", premierBooked=" + premierBooked + "]";
	}



	


	


	
}
