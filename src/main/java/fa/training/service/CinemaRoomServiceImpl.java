package fa.training.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.model.CinemaRoom;
import fa.training.page.PageAble;
import fa.training.repository.CinemaRoomRepository;

/**
 * @author VyTH2
 * Birthday: 20-04-1998
 * Promotion
 * @version 1.0
 * Date 12-10-2023
 * Modification Log:
 */
@Service
public class CinemaRoomServiceImpl implements CinemaRoomService {

    @Autowired
    CinemaRoomRepository CinemaRoomRepository;

    /**
     * @since Oct 5, 2023
     * @param pageAble
     * @param keyWord
     * @return int
     */
    @Override
    public int totalPages(PageAble pageAble, String keyWord) {
        long totalRecord = CinemaRoomRepository.count(keyWord);
        return (int) Math.ceil((double) totalRecord / pageAble.getSize());
    }

    /**
     * @since Oct 5, 2023
     * @param pageAble
     * @param keyWord
     * @return List<CinemaRoom>
     */
    @Override
    public List<CinemaRoom> search(PageAble pageAble, String keyWord) {
        // TODO Auto-generated method stub
        return CinemaRoomRepository.search(pageAble, keyWord);
    }

    /**
     * @since Oct 11, 2023
     * @param id
     * @return CinemaRoom
     */
    @Override
    public CinemaRoom findById(Integer id) {
        return CinemaRoomRepository.findById(id);
    }
}
