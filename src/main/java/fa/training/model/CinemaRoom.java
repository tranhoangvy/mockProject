package fa.training.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 * @author VyTH2 Birthday: 20-04-1998 Promotion
 * @version 1.0 Date 12-10-2023 Modification Log:
 */
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CinemaRoom {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cinemaRoomID;
    @NotBlank
    private String cinemaRoomName;
    @NotNull
    private int seatQuantity;

    @OneToMany(mappedBy = "cinemaRoom")
    List<Seat> seats;

    /**
     * @author VyTH2
     * @since Oct 5, 2023
     * @param cinemaRoomName
     * @param seatQuantity
     */
    public CinemaRoom(@NotBlank String cinemaRoomName, @NotNull int seatQuantity) {
        super();
        this.cinemaRoomName = cinemaRoomName;
        this.seatQuantity = seatQuantity;
    }

}
