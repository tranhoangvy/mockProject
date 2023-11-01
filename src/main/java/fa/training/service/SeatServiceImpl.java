package fa.training.service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.dto.SeatDTO;
import fa.training.dto.SeatIto;
import fa.training.model.Seat;
import fa.training.repository.SeatRepository;

/**
 * @author VyTH2
 * Birthday: 20-04-1998
 * Promotion
 * @version 1.0
 * Date 12-10-2023
 * Modification Log:
 */
@Service
public class SeatServiceImpl implements SeatService {

    @Autowired
    SeatRepository SeatRepository;

    /**
     * @since Oct 5, 2023
     * @param id
     * @return List<SeatDTO>
     */
    @Override
    public List<SeatDTO> seatall(int id) {
        List<Seat> seats = SeatRepository.getListSeatByCinemaId(id);
        if(seats!=null && seats.size()>0) {
        List<SeatDTO> seatDTOs = new ArrayList<>();
        Seat seatMaxRow = seats.stream().max(Comparator.comparing(Seat::getSeatRow)).orElse(null);
        for (int i = 0; i < seatMaxRow.getSeatRow(); i++) {
            int seatRowIndex = i + 1;
            List<Seat> seatRowIndexFilter = seats.stream().filter(e -> e.getSeatRow() == seatRowIndex).collect(Collectors.toList());
            seatDTOs.add(new SeatDTO(i, seatRowIndexFilter));
        }
        return seatDTOs;
        }
        return null;
    }

    /**
     * @since Oct 5, 2023
     * @param seatIto
     */
    @Override
    public void save(SeatIto seatIto) {
        SeatRepository.updateSeat(seatIto);
    }
}
