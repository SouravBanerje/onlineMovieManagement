package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;


import com.infosys.onlineMovieManagement.bean.Movie;
import com.infosys.onlineMovieManagement.bean.MovieShow;

@Service
@Repository
public class MovieDaoImpl implements MovieDao{
		
	@Autowired
	public MovieRepository repository;
	
	@Autowired
    private MovieShowRepository movieShowRepository; 

	@Override
	public void save(Movie movie) {
		repository.save(movie);
		
	}

	@Override
	public String generateMovieId() {
		String val=repository.getLastId();
		long id=0L;
		if(val==null)
			id=100001L;
		else {
			id=Integer.parseInt(val.substring(1));
			id++;
		}
		String newId="M"+id;  	
		return newId;
	}

	@Override
	public Movie findById(String id) {
		
		return repository.findById(id).get();
	}

	@Override
	public List<Movie> findAll() {
		return repository.findAll();
	}

	@Override
	public void deleteMovieById(String id) {
		repository.deleteById(id);
		
	}

	@Override
	public List<Movie> getLanguagewiseMovieList(String language) {
		return repository.getLanguagewiseMovieList(language);
	}

	@Override
	public void updateMovieById(String id, String NewImage,String NewmovieName, String Newlanguage, String Newgenre,
			Integer Newduration, Double Newratings) {
			Movie movie = repository.findById(id).orElse(null);
	        
	        if (movie != null) {
	            movie.setImageLink(NewImage);
	            movie.setMovieName(NewmovieName);
	            movie.setLanguage(Newlanguage);
	            movie.setGenre(Newgenre);
	            movie.setDuration(Newduration);
	            movie.setRatings(Newratings);
	            
	           
	            repository.save(movie);
		
	}
	
	
	}

	@Override
	public List<MovieShow> findShowTimesByMovieId(String movieId) {
		// TODO Auto-generated method stub
		return movieShowRepository.findByMovieId(movieId);
	}
	
	
	
}
