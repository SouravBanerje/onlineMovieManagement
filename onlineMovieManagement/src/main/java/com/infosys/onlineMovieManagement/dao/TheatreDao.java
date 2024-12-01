package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import com.infosys.onlineMovieManagement.bean.Movie;
import com.infosys.onlineMovieManagement.bean.Screen;
import com.infosys.onlineMovieManagement.bean.Theatre;

public interface TheatreDao {

	void saveTheatre(Theatre theatre);
    List<Theatre> getAllTheatres();
    Theatre getTheatreById(Integer id);
    void updateTheatre(Theatre theatre);  // Update method
    void deleteTheatre(Integer id); 
    public Integer generateTheatreId();
    public List<Theatre> findAll();

	
	
}
