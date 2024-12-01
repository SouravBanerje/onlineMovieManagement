package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.infosys.onlineMovieManagement.bean.TheatreScreenMovieShow;

@Service
@Repository
public class theatre_screen_movie_showDaoImpl implements theatre_screen_movie_showDao{

	@Autowired
	private theatre_screen_movie_showRepository repository;
	
	@Override
	public void save(TheatreScreenMovieShow screenMovieShow) {
		repository.save(screenMovieShow);
		
	}

	@Override
	public List<TheatreScreenMovieShow> getAllTheatreScreenMovieShows() {
		
		return repository.findAll();
	}

	@Override
	public List<TheatreScreenMovieShow> getScreenMovieShowsByTheatreId(Integer theatreId) {
		return repository.getScreenMovieShowsByTheatreId(theatreId);
	}

}
