package com.hotel.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.hotel.model.Booking;

@Repository
public class BookingDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public void saveBooking(Booking booking) {
		hibernateTemplate.save(booking);
	}

	// ✅ NEW METHOD (Guest list ke liye)
	public List<Booking> getAllBookings() {
		return (List<Booking>) hibernateTemplate.loadAll(Booking.class);
	}

	public void deleteBooking(int roomNo) {

		Booking booking = hibernateTemplate.get(Booking.class, roomNo);
		hibernateTemplate.delete(booking);
	}

	public boolean isRoomBooked(int roomNo) {

		String hql = "from Booking where roomNo = :roomNo";
		List<Booking> list = (List<Booking>) hibernateTemplate.findByNamedParam(hql, "roomNo", roomNo);

		return !list.isEmpty();
	}

	public int getRoomPrice(int roomNo) {

		String hql = "select price from rooms where room_no = :roomNo";
		List<Integer> list = (List<Integer>) hibernateTemplate.findByNamedParam(hql, "roomNo", roomNo);

		if (!list.isEmpty()) {
			return list.get(0);
		}

		return 0;
	}
}