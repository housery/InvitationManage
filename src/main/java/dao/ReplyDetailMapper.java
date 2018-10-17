package dao;

import org.apache.ibatis.annotations.Param;
import pojo.ReplyDetail;

import java.util.List;

public interface ReplyDetailMapper {
    public List<ReplyDetail> getReplyDetailList(@Param("pageFirst") int pageFirst,
                                                @Param("pageSize") int pageSize,
                                                @Param("invid") int invid);

    public Integer getCount(@Param("id") int id);

    public int addReply(@Param("replyDetail") ReplyDetail replyDetail);
}
