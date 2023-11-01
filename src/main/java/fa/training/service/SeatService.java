package fa.training.service;

import java.util.List;

import org.springframework.stereotype.Service;

import fa.training.dto.SeatDTO;
import fa.training.dto.SeatIto;

/**
 * @author VyTH2
 * Birthday: 20-04-1998
 * Promotion
 * @version 1.0
 * Date 12-10-2023
 * Modification Log:
 */
@Service
public interface SeatService {
	/**
	 * @since Oct 5, 2023
	 * @param seatIto
	 * Return Int
	 */
	void save(SeatIto seatIto);
	/**
	 * @since Oct 5, 2023
	 * @param id
	 * @return List<SeatDTO>
	 */
	List<SeatDTO> seatall(int id);
}
