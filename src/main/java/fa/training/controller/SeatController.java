package fa.training.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import fa.training.dto.SeatDTO;
import fa.training.dto.SeatIto;
import fa.training.service.CinemaRoomService;
import fa.training.service.SeatService;

/**
 * @author VyTH2 
 * Birthday: 20-04-1998 Promotion
 * @version 1.0 
 * Date 12-10-2023 
 * Modification Log:
 */
@Controller
@RequestMapping(value = "/seat")
public class SeatController {
    
    @Autowired
    SeatService seatService;
    @Autowired
    CinemaRoomService cinemaRoomService;

    /**
     * @author VyTH2
     * @since Oct 5, 2023
     * @param id
     * @param model
     * @return String
     */
    @GetMapping("/{id}")
    public String seatdetail(@PathVariable("id") int id,Model model) {
        List<SeatDTO> seatDTOs = seatService.seatall(id);
        if(seatDTOs==null) {
            return "errorpage";
        }
        model.addAttribute("cinemaroom", cinemaRoomService.findById(id));
        model.addAttribute("data",seatDTOs);
        return "seat";
    }

    /**
     * @author VyTH2
     * @since Oct 5, 2023
     * @param seatIto
     * @param model
     * @return trả về controller cinemaroom detail
     */
    @PostMapping()
    public String save(@RequestBody SeatIto seatIto,Model model) {
        seatService.save(seatIto);
        return "redirect:/cinemaroom/search";
    }
}
