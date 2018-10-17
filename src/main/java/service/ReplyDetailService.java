package service;

import dao.ReplyDetailMapper;
import org.springframework.stereotype.Service;
import pojo.ReplyDetail;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ReplyDetailService {
    @Resource
    private ReplyDetailMapper replyDetailMapper;

    public List<ReplyDetail> getReplyDetailList(int pageFirst, int pageSize, int invid){
        return replyDetailMapper.getReplyDetailList(pageFirst, pageSize, invid);
    }

    public Integer getCount(int id){
        return replyDetailMapper.getCount(id);
    }

    public int addReply(ReplyDetail replyDetail){
        return replyDetailMapper.addReply(replyDetail);
    }
}
