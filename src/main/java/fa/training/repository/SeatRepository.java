package fa.training.repository;

import java.util.List;

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
public interface SeatRepository {
    
    /**
     * @since Oct 5, 2023
     * @param id
     * @return List<Seat>
     */
    List<Seat> getListSeatByCinemaId(int id);

    /**
     * @since Oct 5, 2023
     * @param seatIto
     */
    void updateSeat(SeatIto seatIto);
}
