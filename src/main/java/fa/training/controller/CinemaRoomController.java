package fa.training.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.training.model.CinemaRoom;
import fa.training.page.PageAble;
import fa.training.service.CinemaRoomService;
import fa.training.service.SeatService;

/**
 * @author VyTH2 
 * Birthday: 20-04-1998 
 * Promotion
 * @version 1.0 
 * Date 12-10-2023 
 * Modification Log:
 */
@Controller
@RequestMapping(value = "/cinemaroom")
public class CinemaRoomController {
    @Autowired
    CinemaRoomService cinemaRoomService;
    @Autowired
    SeatService seatService;

    /**
     * @since Oct 5, 2023
     * @param page
     * @param keyWord
     * @param model
     * @return trả về trang CinemaRoom
     */
    @GetMapping("/search")
    public String search(@RequestParam(defaultValue = "1") Integer page,
            @RequestParam(value = "keyWord", defaultValue = "") String keyWord, Model model) {
        try {
            keyWord = keyWord.trim();
            if (keyWord.length() <= 28) {
                PageAble pageAble = new PageAble(page);
                List<CinemaRoom> cinemaRoom = cinemaRoomService.search(pageAble, keyWord);
                model.addAttribute("cinemaRoom", cinemaRoom);
                model.addAttribute("totalPages", cinemaRoomService.totalPages(pageAble, keyWord));
                model.addAttribute("currentPage", page);
                model.addAttribute("keyword", keyWord);
                if (cinemaRoom.size() == 0) {
                    model.addAttribute("search", "Không có kết quả tìm kiếm");
                }
                return "CinemaRoom";
            } else {
                model.addAttribute("search", "bạn nhập quá 28 ký tự");
                return "CinemaRoom";
            }
        } catch (Exception e) {
            return "errorpage";
        }
    }

    /**
     * @author VyTH2
     * @since Oct 5, 2023
     * @param model
     * @return
     */
    @GetMapping("/addnew")
    public String addNew(Model model) {
        model.addAttribute("noidung", "Page giả lập trang Add New");
        return "emulatorpage";
    }

    /**
     * @author VyTH2
     * @since Oct 5, 2023
     * @param model
     * @return
     */
    @GetMapping("/logout")
    public String logOut(Model model) {
        model.addAttribute("noidung", "Page giả lập trang Logout");
        return "emulatorpage";
    }

    /**
     * @author VyTH2
     * @since Oct 5, 2023
     * @param model
     * @return
     */
    @GetMapping("/information")
    public String thongTin(Model model) {
        model.addAttribute("noidung", "Page giả lập trang Thông Tin Cá Nhân");
        return "emulatorpage";
    }

    /**
     * @author VyTH2
     * @since Oct 5, 2023
     * @param model
     * @return
     */
    @GetMapping("/movie")
    public String movie(Model model) {
        model.addAttribute("noidung", "Page giả lập trang Movie");
        return "emulatorpage";
    }
}
