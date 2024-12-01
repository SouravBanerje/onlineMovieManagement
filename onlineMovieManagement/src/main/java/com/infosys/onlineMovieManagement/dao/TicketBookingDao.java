package com.infosys.onlineMovieManagement.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.query.Param;

import com.infosys.onlineMovieManagement.bean.TicketBooking;

public interface TicketBookingDao {

	public void save(TicketBooking ticketBooking);
	public List<TicketBooking> findAll();
	public TicketBooking getTicket(Long ticketId);
	public Long generateId();
	Optional<TicketBooking> getTicket1(@Param("ticketId") Long ticketId);
	
}
