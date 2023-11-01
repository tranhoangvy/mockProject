package fa.training.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @author VyTH2
 * Birthday: 20-04-1998
 * Promotion
 * @version 1.0
 * Date 12-10-2023
 * Modification Log:
 */
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Seat {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int seatID;
    @ManyToOne
    @JoinColumn(name = "cinemaRoomID")
    CinemaRoom cinemaRoom;
    
    private String seatColumn;
    private int seatRow;
    
    private int seatStatus;
    private int seatType;

    /**
     * @author VyTH2
     * @since Oct 5, 2023
     * @param cinemaRoom
     * @param seatColumn
     * @param seatRow
     * @param seatStatus
     * @param seatType
     */
    public Seat(CinemaRoom cinemaRoom, String seatColumn, int seatRow, int seatStatus, int seatType) {
        super();
        this.cinemaRoom = cinemaRoom;
        this.seatColumn = seatColumn;
        this.seatRow = seatRow;
        this.seatStatus = seatStatus;
        this.seatType = seatType;
    }
    /**
     * @author VyTH2
     * @since Oct 5, 2023
     */
    @Override
    public String toString() {
        return "Seat [seatID=" + seatID + ", cinemaRoom=" + cinemaRoom + ", seatColumn=" + seatColumn + ", seatRow="
                + seatRow + ", seatStatus=" + seatStatus + ", seatType=" + seatType + "]";
    }
    
}
