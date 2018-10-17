package dao;

import org.apache.ibatis.annotations.Param;
import pojo.Invitation;

import java.util.List;

public interface InvitationMapper {
    public int getCount(@Param("summary") String summary);

    public List<Invitation> getInvitationList(@Param("summary") String summary,
                                  @Param("pageFirst") Integer pageFirst,
                                  @Param("pageSize") Integer pageSize);

    public int delInv(@Param("invId") Integer invId);
}
