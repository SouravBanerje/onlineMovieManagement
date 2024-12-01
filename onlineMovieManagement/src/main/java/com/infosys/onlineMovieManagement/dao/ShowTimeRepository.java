package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.infosys.onlineMovieManagement.bean.ShowTime;

@Repository
public interface ShowTimeRepository extends JpaRepository<ShowTime, Integer>{
	
	@Query("select max(showTimeId) from ShowTime")
	public Integer getLastId();
	
	@Query("select showTimeId from ShowTime")
	List<Integer> getAllShowTimeIds();
	
	@Query("select showTimeName from ShowTime where showTimeId=?1")
	public String getShowTimeName(Integer showTimeId);
	
	@Query("select a from ShowTime a where showTimeName=?1")
	public ShowTime getShowTime(String showTimeName);
	

}
