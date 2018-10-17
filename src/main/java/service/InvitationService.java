package service;

import dao.InvitationMapper;
import org.springframework.stereotype.Service;
import pojo.Invitation;

import javax.annotation.Resource;
import java.util.List;

@Service
public class InvitationService {
    @Resource
    private InvitationMapper invitationMapper;

    public int getCount(String summary){
        return invitationMapper.getCount(summary);
    }

    public List<Invitation> getInvitationList(String summary, Integer pageFirst, Integer pageSize){

        return invitationMapper.getInvitationList(summary, pageFirst, pageSize);
    }
    public int delInv(Integer invId){
        return invitationMapper.delInv(invId);
    }
}
