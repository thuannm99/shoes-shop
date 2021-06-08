
package filter;

import connectionjdbc.user.UserService;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;



@WebFilter (urlPatterns = {"/SendMail.jsp"} )
public class AddUserFilter implements Filter{

    private UserService userService;
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        userService = new UserService();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        req.setCharacterEncoding("UTF-8");
        res.setContentType("text/html;charset=UTF-8");
        String name  = req.getParameter("name");
        String email = req.getParameter("email");
        String phoneNumber = req.getParameter("phone_number");
        String address = req.getParameter("address");
        //user.setBirthday(request.getParameter("birthday"));
        String day = req.getParameter("day");
        if(day.length() == 1){
            day = "0" + day;
        }
        String month = req.getParameter("month");
        if(month.length() == 1){
            month = "0" + month;
        }
        String year = req.getParameter("year");
        String birthday = year+"/"+month+"/"+day;
        String gender = req.getParameter("gender");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User user = new User(name,email,phoneNumber,gender,address,birthday);
        request.setAttribute("newUser", user);
        request.setAttribute("username", username);
        request.setAttribute("password", password);
        if(userService.getUserByEmail(email) == null){
            res.sendRedirect("/ShoeShop/SignUp.jsp?error=1");
        } else if(userService.getUserByPhonenNumber(phoneNumber) != null){
            res.sendRedirect("/ShoeShop/SignUp.jsp?error=2");
        } else if(userService.checkUsername(username)){
            res.sendRedirect("/ShoeShop/SignUp.jsp?error=3");
        }else{
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {

    }
    
}
