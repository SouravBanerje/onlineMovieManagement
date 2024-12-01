package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.infosys.onlineMovieManagement.bean.Movie;

public interface MovieRepository extends JpaRepository<Movie, String> {

	@Query("select max(movieId) from Movie")
	public String getLastId();
	
	@Query("select a from Movie a where language = ?1")
	public List<Movie> getLanguagewiseMovieList (String language);
}
