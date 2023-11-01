package fa.training.dto;

import java.util.List;

import fa.training.model.Seat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author VyTH2
 * Birthday: 20-04-1998
 * Promotion
 * @version 1.0
 * Date 12-10-2023
 * Modification Log:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SeatDTO {
    int index;
    List<Seat> seatRowIndex;
}
