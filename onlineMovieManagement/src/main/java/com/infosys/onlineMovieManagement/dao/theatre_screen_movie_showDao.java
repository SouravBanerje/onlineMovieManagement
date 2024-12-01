package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import com.infosys.onlineMovieManagement.bean.TheatreScreenMovieShow;

public interface theatre_screen_movie_showDao {
	public void save(TheatreScreenMovieShow screenMovieShow);

	public List<TheatreScreenMovieShow> getAllTheatreScreenMovieShows();

	
	public List<TheatreScreenMovieShow> getScreenMovieShowsByTheatreId(Integer theatreId);

	
		
		
}
