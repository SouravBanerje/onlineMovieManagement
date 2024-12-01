package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.infosys.onlineMovieManagement.bean.Screen;

@Service
public class ScreenDaoImpl implements ScreenDao{
	@Autowired
    private ScreenRepository screenRepository;

	@Override
	public void save(Screen screen) {
		screenRepository.save(screen);
		
	}

	@Override
	public Screen getById(Integer screenId) {
		
		return screenRepository.findById(screenId).orElse(null);
	}

	@Override
	public List<Screen> getAllScreens() {
	
		return screenRepository.findAll();
	}

	@Override
	public void update(Screen screen) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer screenId) {
		screenRepository.deleteById(screenId);
		
	}

	@Override
	public Integer generateScreenId() {
		Integer newId=screenRepository.getLastId();
		if(newId==null) {
			newId=1;
		}
		else {
			newId=newId+1;
		}
		return newId;
		
	}

	@Override
	public List<Integer> getAllIds() {
		
		return screenRepository.getAllScreenTimeIds();
	}
	
    
}
