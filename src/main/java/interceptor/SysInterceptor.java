package interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SysInterceptor extends HandlerInterceptorAdapter {

    /*public boolean preHandle(HttpServletRequest req,
                             HttpServletResponse rep, Object handler) throws Exception{
        HttpSession session= req.getSession();
        User admin=(User)session.getAttribute(Constants.USER_SESSION);
        if(admin==null){
            rep.sendRedirect(req.getContextPath()+"/login");
            return false;
        }else {
            return true;
        }
    }*/
}
