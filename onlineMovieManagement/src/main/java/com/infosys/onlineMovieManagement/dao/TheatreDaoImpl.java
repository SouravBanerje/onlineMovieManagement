package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infosys.onlineMovieManagement.bean.Theatre;

@Service
public class TheatreDaoImpl implements TheatreDao{
	@Autowired
    private TheatreRepository theatreRepository;

    @Override
    public void saveTheatre(Theatre theatre) {
        theatreRepository.save(theatre);
    }

    @Override
    public List<Theatre> getAllTheatres() {
        return theatreRepository.findAll();
    }

    @Override
    public Theatre getTheatreById(Integer id) {
        return theatreRepository.findById(id).orElse(null);
    }

    @Override
    public void updateTheatre(Theatre theatre) {
        if (theatreRepository.existsById(theatre.getTheatreId())) {
            theatreRepository.save(theatre);  // Save to update
        }
    }

    @Override
    public void deleteTheatre(Integer id) {
        if (theatreRepository.existsById(id)) {
            theatreRepository.deleteById(id);  // Delete by ID
        }
    }

	@Override
	public Integer generateTheatreId() {
		Integer newId=theatreRepository.getLastId();
		if(newId==null) {
			newId=1;
		}
		else {
			newId=newId+1;
		}
		return newId;
		
	}

	@Override
	public List<Theatre> findAll() {
		
		return theatreRepository.findAll();
	}

	
    
}
