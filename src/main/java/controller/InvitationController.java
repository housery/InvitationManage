package controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Invitation;
import service.InvitationService;
import tools.PageSupport;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class InvitationController {
    @Resource
    private InvitationService invitationService;
    private Logger logger = Logger.getLogger(InvitationController.class);

    @RequestMapping("/invitationList.html")
    public String getInvitationList(@RequestParam(value = "summary", required = false) String summary,
                                    @RequestParam(value = "pageIndex", required = false) String pageIndex,
                                    Model model){
        logger.debug("-------pageIndex:" + pageIndex);
        // 当前页码
        int currentPageNo = 1;
        if (pageIndex != null) {
            currentPageNo = Integer.valueOf(pageIndex);
        }
        // 总数量（表）
        int totalCount = invitationService.getCount(summary);
        // 总页数
        PageSupport pages = new PageSupport();
        pages.setCurrentPageNo(currentPageNo);// 当前页码
        pages.setTotalCount(totalCount); // 总数量
        int totalPageCount = pages.getTotalPageCount();// 总页数-totalCount/pageSize（+1）
        int pageSize=pages.getPageSize();
        // 控制首页和尾页
        if (currentPageNo < 1) {
            currentPageNo = 1;
        } else if (currentPageNo > totalPageCount) {
            currentPageNo = totalPageCount;
        }
        List<Invitation> invitationList = invitationService.getInvitationList(summary,(currentPageNo-1)*pageSize, pageSize);
        model.addAttribute("invitationList", invitationList);
        model.addAttribute("summary", summary);
        model.addAttribute("totalPageCount", totalPageCount);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPageNo", currentPageNo);
        return "invitationList";
    }

    // 删除论坛帖子
    @RequestMapping("/delInv")
    public String delInv(@RequestParam("invId") String invId){
        invitationService.delInv(Integer.parseInt(invId));
        return "redirect:/invitationList.html";
    }

}
