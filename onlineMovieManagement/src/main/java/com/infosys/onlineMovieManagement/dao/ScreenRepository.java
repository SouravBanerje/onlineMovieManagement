package com.infosys.onlineMovieManagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.infosys.onlineMovieManagement.bean.Screen;

@Repository
public interface ScreenRepository extends JpaRepository<Screen, Integer>{
	

	
	@Query("select max(id) from Screen")
	public Integer getLastId();
	
	@Query("select screen_id from Screen")
	List<Integer> getAllScreenTimeIds();
}
