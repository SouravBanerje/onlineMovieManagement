package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import com.infosys.onlineMovieManagement.bean.MovieShow;
import com.infosys.onlineMovieManagement.bean.MovieShowEmbed;

public interface MovieShowDao {
	
	public void save(MovieShow movieShow);
	public MovieShow getMovieShowById(MovieShowEmbed id) ;
	public List<MovieShow> findAll();
	public List<MovieShowEmbed> getAllIds();
	public void deleteMovieShowById(MovieShowEmbed id);
	public boolean existsById(MovieShowEmbed id);
	MovieShow findByMovieIdAndShowTimeId(String movieId, Integer showTimeId);

	 MovieShowEmbed generateMovieShowId();
	 public void deleteMovieShowByScreenId(Long screenId);
	 List<MovieShow> findByScreen_Id(Long screenId);
	 // New method to find MovieShow records by movieId
    public List<MovieShow> findByMovieId(String movieId);
   public void deleteMovieShowByMovieIdAndShowId(String movieId,Integer showTimeId);
  

public void update(String movieId, int int1, Integer royalSeatNumber, Integer royalBooked, Integer premierSeatNumber,
		Integer premierBooked);
   
	/*
	public void updateMovieShowById(MovieShowEmbed id,
			Integer premierSeatNumber,
			Integer royalSeatNumber);
			*/
  
}
