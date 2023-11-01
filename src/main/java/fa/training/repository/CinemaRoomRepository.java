package fa.training.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import fa.training.model.CinemaRoom;
import fa.training.page.PageAble;

/**
 * @author VyTH2
 * Birthday: 20-04-1998
 * Promotion
 * @version 1.0
 * Date 12-10-2023
 * Modification Log:
 */
@Repository
public interface CinemaRoomRepository {
    
    /**
     * @since Oct 5, 2023
     * @param keyWord
     * @return long
     */
    public long count(String keyWord);

    
    /**
     * @since Oct 5, 2023
     * @param pageAble
     * @param keyWord
     * @return List<CinemaRoom>
     */
    public List<CinemaRoom> search(PageAble pageAble, String keyWord);

    /**
     * @since Oct 11, 2023
     * @param id
     * @return CinemaRoom
     */
    public CinemaRoom findById(Integer id);
}
