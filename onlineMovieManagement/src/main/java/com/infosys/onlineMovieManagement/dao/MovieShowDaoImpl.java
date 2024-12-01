package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infosys.onlineMovieManagement.bean.MovieShow;
import com.infosys.onlineMovieManagement.bean.MovieShowEmbed;

import jakarta.persistence.EntityManager;

@Service
@Repository
public class MovieShowDaoImpl implements MovieShowDao {

	@Autowired
	private MovieShowRepository repository;
	
	 @Autowired
	 private EntityManager entityManager;
	
	@Override
	public void save(MovieShow movieShow) {
		repository.save(movieShow);

	}

	
	@Override
	public List<MovieShow> findAll() {
		return repository.findAll();
	}


	@Override
	public List<MovieShowEmbed> getAllIds() {
		return repository.getAllIds();
	}

	
	@Override
	public void deleteMovieShowById(MovieShowEmbed id) {
		repository.deleteById(id);
		
	}

	//10-11
	@Override
	public List<MovieShow> findByMovieId(String movieId) {
		return repository.findByMovieId(movieId);
	}


	@Override
	public boolean existsById(MovieShowEmbed id) {
		// TODO Auto-generated method stub
		return repository.existsById(id);
	}


	@Override
	public void deleteMovieShowByMovieIdAndShowId(String movieId, Integer showTimeId) {
		repository.deleteMovieShowByMovieIdAndShowTimeId(movieId, showTimeId);
		
	}

	@Override
    public MovieShowEmbed generateMovieShowId() {
        // Assuming the ID is auto-generated and you need to fetch it after persisting
        MovieShow movieShow = new MovieShow();
        entityManager.persist(movieShow);
        return movieShow.getEmbeddedId();
    }

	/*
	 * @Override public void updateMovieShowById(MovieShowEmbed id, Integer
	 * premierSeatNumber, Integer royalSeatNumber) { MovieShow movieShow =
	 * repository.findById(id).orElse(null);
	 * 
	 * if (movieShow != null) { // Update the seat numbers
	 * movieShow.setPremierSeatNumber(premierSeatNumber);
	 * movieShow.setRoyalSeatNumber(royalSeatNumber);
	 * 
	 * // Save the updated movie show repository.save(movieShow);
	 * 
	 * }
	 * 
	 * }
	 */
	
	public void deleteMovieShowByScreenId(Long screenId) {
	    
	}


	@Override
	public List<MovieShow> findByScreen_Id(Long screenId) {
		
		return null;
	}


	@Override
	public MovieShow getMovieShowById(MovieShowEmbed id) {
		
		return repository.findById(id).get();
	}


	@Override
	public MovieShow findByMovieIdAndShowTimeId(String movieId, Integer showTimeId) {
		
		return repository.findByMovieIdAndShowTimeId(movieId, showTimeId);
	}


	@Override
	public void update(String movieId, int int1, Integer royalSeatNumber, Integer royalBooked,
			Integer premierSeatNumber, Integer premierBooked) {
		repository.update(movieId, premierBooked, int1, int1, int1, int1);
		
	}





	
	
	
	
}
