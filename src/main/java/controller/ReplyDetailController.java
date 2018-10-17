package controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Invitation;
import pojo.ReplyDetail;
import service.ReplyDetailService;
import tools.PageSupport;

import javax.annotation.Resource;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;

@Controller
public class ReplyDetailController {
    @Resource
    private ReplyDetailService replyDetailService;
    private Logger logger = Logger.getLogger(InvitationController.class);

    @RequestMapping("/getReplyDetailList.html")
    public String getReplyDetailList(@RequestParam(value = "pageIndex", required = false) String pageIndex,
                                     @RequestParam("invid") String invid, Model model){

        logger.debug("-------pageIndex:" + pageIndex);
        int _invid = Integer.parseInt(invid);
        // 当前页码
        int currentPageNo = 1;
        if (pageIndex != null) {
            currentPageNo = Integer.valueOf(pageIndex);
        }
        // 总数量（表）
        int totalCount = replyDetailService.getCount(_invid);
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

        List<ReplyDetail> replyDetailList = replyDetailService.getReplyDetailList((currentPageNo-1)*pageSize, pageSize, _invid);
        model.addAttribute("replyDetailList", replyDetailList);
        model.addAttribute("invid", _invid);
        model.addAttribute("totalPageCount", totalPageCount);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPageNo", currentPageNo);
        return "replyDetailList";
    }

    @RequestMapping("/addReply")
    @ResponseBody
    public String addReply(ReplyDetail replyDetail){
        replyDetail.setCreatedate(new Timestamp(System.currentTimeMillis()));
        int result = replyDetailService.addReply(replyDetail);
        if (result > 0){
             return "<script>alert('添加成功');window.location.href='/InvitationManage/getReplyDetailList.html?invid="+replyDetail.getInvid() + "'</script>";
        }else {
            return "<script>alert('添加失败');window.location.href='/InvitationManage/getReplyDetailList.html?invid="+replyDetail.getInvid() + "'</script>";
        }
    }

    @RequestMapping("/gotoAddReply.html")
    public String gotoAddReply(@RequestParam("invid") String invid,Model model){
        model.addAttribute("invid", invid);
        return "addReply";
    }

}
