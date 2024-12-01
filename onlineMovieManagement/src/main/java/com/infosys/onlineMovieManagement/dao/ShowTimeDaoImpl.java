package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.infosys.onlineMovieManagement.bean.ShowTime;

@Service
@Repository
public class ShowTimeDaoImpl  implements ShowTimeDao{

	@Autowired
	private ShowTimeRepository repository;
	
	@Override
	public void save(ShowTime showTime) {
		repository.save(showTime);
	}
	
	@Override
	public Integer generateShowTimeId() {
		Integer newId=repository.getLastId();
		if(newId==null) {
			newId=1;
		}
		else {
			newId=newId+1;
		}
		return newId;
		
	}
	@Override
    public ShowTime findById(Integer id) {
        return repository.findById(id).orElse(null); 
    }
	@Override
    public List<ShowTime> findAll() {
        return repository.findAll();
    }
	@Override
    public void deleteShowTimeById(Integer id) {
        repository.deleteById(id);
    }

	@Override
	public List<Integer> getAllIds() {
	    return repository.getAllShowTimeIds();
	}

	@Override
	public void updateShowTimeById(Integer id, String newName, Double newRoyalPrice, Double newPremierPrice) {
	    ShowTime showTime = repository.findById(id).orElse(null);
	    if (showTime != null) {
	       
	        showTime.setShowTimeName(newName);
	        showTime.setShowTimeRoyalPrice(newRoyalPrice);
	        showTime.setShowTimePremierPrice(newPremierPrice);
	        
	       
	        repository.save(showTime);
	    }
	}

	@Override
	public String getShowTimeName(Integer showTimeId) {
		// TODO Auto-generated method stub
		return repository.getShowTimeName(showTimeId);
	}

	@Override
	public ShowTime getShowTime(String showTimeName) {
		// TODO Auto-generated method stub
		return repository.getShowTime(showTimeName);
	}


	
}
