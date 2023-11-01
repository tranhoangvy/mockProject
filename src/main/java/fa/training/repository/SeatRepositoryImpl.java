package fa.training.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fa.training.dto.SeatIto;
import fa.training.model.Seat;

/**
 * @author VyTH2
 * Birthday: 20-04-1998
 * Promotion
 * @version 1.0
 * Date 12-10-2023
 * Modification Log:
 */
@Repository
public class SeatRepositoryImpl implements SeatRepository {

    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    CinemaRoomRepository cinemaRoomRepository;

    /**
     * @since Oct 5, 2023
     * @param id
     * @return List<Seat>
     */
    @Override
    public List<Seat> getListSeatByCinemaId(int id) {
        try {
            Session session = sessionFactory.openSession();
            String nativeQuery = "SELECT * FROM seat WHERE cinemaRoomID = :id ORDER BY seatRow, seatColumn";
            List<Seat> seatList = session.createNativeQuery(nativeQuery, Seat.class).setParameter("id", id).getResultList();
            return seatList;
        } catch (Exception e) {
        	System.out.println("lỗi ID bị sai");
            return null;
        }
    }

    /**
     * @since Oct 5, 2023
     * @param seatIto
     * @return void
     */
    @Override
    @Transactional
    public void updateSeat(SeatIto seatIto) {
        Transaction transaction = null;
        Session session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        String nativeQuery = "UPDATE Seat SET seatStatus = CASE "
                + "                            WHEN seat.seatStatus = 0 THEN 1 "
                + "                            WHEN seat.seatStatus = 1 THEN 0 END "
                + "WHERE seatID in (:ids) AND seat.cinemaRoomID = :cinemaRoomId ";
        session.createNativeQuery(nativeQuery).setParameter("ids", seatIto.getSeatIds())
                .setParameter("cinemaRoomId", seatIto.getCinemaRoomId()).executeUpdate();
        transaction.commit();
    }

}
