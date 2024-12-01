package com.infosys.onlineMovieManagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.infosys.onlineMovieManagement.bean.MovieUser;

public interface MovieUserRepository extends JpaRepository<MovieUser, String>{

}
