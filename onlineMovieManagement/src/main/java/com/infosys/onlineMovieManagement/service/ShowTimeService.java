package com.infosys.onlineMovieManagement.service;

import org.springframework.stereotype.Service;

@Service
public class ShowTimeService {

	public double createRoyalPrice(Double premierPrice) {
		double royalPrice = premierPrice+(premierPrice*0.25);
		return royalPrice;
	}
}
