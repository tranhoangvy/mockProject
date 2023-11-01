package fa.training.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
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
public class CinemaRoomRepositoryImpl implements CinemaRoomRepository {

    @Autowired
    SessionFactory sessionFactory;

    /**
     * @since Oct 5, 2023
     * @param keyWord
     * @return long
     */
    @Override
    @Transactional
    public long count(String keyWord) {
    	try {
    		Session session = sessionFactory.getCurrentSession();
            String hql = "select * from cinemaRoom where cinemaRoomID like :keyWord or cinemaRoomName like :keyWord or seatQuantity like :keyWord";
            Query<CinemaRoom> query = session.createNativeQuery(hql).addEntity(CinemaRoom.class);
            query.setParameter("keyWord", "%" + keyWord + "%");
            long i = query.getResultList().size();
            return i;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
    		
    }

    /**
     * @since Oct 5, 2023
     * @param pageAble
     * @param keyWord
     * @return List<CinemaRoom>
     */
    @Override
    @Transactional
    public List<CinemaRoom> search(PageAble pageAble, String keyWord) {
        Session session = sessionFactory.getCurrentSession();
        String hql = "select * from cinemaRoom where cinemaRoomID like :keyWord or cinemaRoomName like :keyWord or seatQuantity like :keyWord";
        Query<CinemaRoom> query = session.createNativeQuery(hql).addEntity(CinemaRoom.class);
        query.setParameter("keyWord", "%" +keyWord + "%");
        List<CinemaRoom> cinemaRoom = query.setFirstResult(pageAble.getOffset()).setMaxResults(pageAble.getSize())
                .getResultList();
        return cinemaRoom;
    }
    
    /**
     * @since Oct 5, 2023
     * @param id
     * @return CinemaRoom
     */
    @Override
    @Transactional
    public CinemaRoom findById(Integer id) {
        Session session = sessionFactory.getCurrentSession();
        return session.find(CinemaRoom.class, id);
    }
}
