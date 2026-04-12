package com.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.dao.BookingDao;
import com.hotel.model.Booking;

@Service
@Transactional
public class BookingService {

    @Autowired
    private BookingDao bookingDao;

    public void saveBooking(Booking booking) {
        bookingDao.saveBooking(booking);
    }

    // ✅ NEW METHOD (Guest list ke liye)
    public List<Booking> getAllBookings() {
        return bookingDao.getAllBookings();
    }
    
    public void deleteBooking(int roomNo) {
        bookingDao.deleteBooking(roomNo);
    }
    
    public boolean isRoomBooked(int roomNo) {
    	return bookingDao.isRoomBooked(roomNo);
    }
    
    public int getRoomPrice(int roomNo) {
    	return bookingDao.getRoomPrice(roomNo);
    }
}