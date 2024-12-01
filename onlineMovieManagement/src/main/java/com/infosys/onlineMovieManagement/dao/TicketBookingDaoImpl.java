package com.infosys.onlineMovieManagement.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.infosys.onlineMovieManagement.bean.TicketBooking;

@Service
@Repository
public class TicketBookingDaoImpl implements TicketBookingDao {
	
	@Autowired
	private TicketBookingRepository repository;

	@Override
	public void save(TicketBooking ticketBooking) {
		repository.save(ticketBooking);
		
	}

	@Override
	public List<TicketBooking> findAll() {
		
		return repository.findAll();
	}

	@Override
	public TicketBooking getTicket(Long ticketId) {
		
		return repository.findById(ticketId).get();
	}

	@Override
	public Long generateId() {
		Long newId=repository.getLastId();
		if(newId==null) {
			newId=1000000L;
		}
		else {
			newId=newId+1;
		}
		return newId;
		
	}

	@Override
	public Optional<TicketBooking> getTicket1(Long ticketId) {
		
		return repository.getTicket1(ticketId);
	}
	
	
}
