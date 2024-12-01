package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import com.infosys.onlineMovieManagement.bean.ShowTime;

public interface ShowTimeDao {

	public void save(ShowTime showTime);
	public Integer generateShowTimeId();
	public ShowTime findById(Integer id);
	public List<ShowTime> findAll();
	public void deleteShowTimeById(Integer id);
	public void updateShowTimeById(Integer id, String newName, Double newRoyalPrice, Double newPremierPrice);
	public List<Integer> getAllIds();
	
	public String getShowTimeName(Integer showTimeId);
	public ShowTime getShowTime(String  showTimeName);
}
