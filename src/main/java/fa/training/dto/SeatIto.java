package fa.training.dto;

import java.util.List;

import lombok.Data;

/**
 * @author VyTH2
 * Birthday: 20-04-1998
 * Promotion
 * @version 1.0
 * Date 12-10-2023
 * Modification Log:
 */
@Data
public class SeatIto {
    private Integer cinemaRoomId;
    private List<Integer> seatIds;
}
