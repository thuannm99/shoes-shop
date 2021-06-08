
package filter;

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
import javax.servlet.http.HttpSession;
import model.User;


@WebFilter(urlPatterns = { "/user/*"})
public class UserFilter implements Filter {
    

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        String url = req.getRequestURI();
        if(url.startsWith("/ShoeShop/user/")){
            Object object = session.getAttribute("currentUser");
            if(object != null){
                User user = (User) object;
                if(url.startsWith("/ShoeShop/user/employee/")){
                    if("employee".equals(user.getRole()) || "admin".equals(user.getRole())){
                        chain.doFilter(request, response);
                    }else{
                        res.sendRedirect("/ShoeShop/user/MyAccount.jsp");
                    }
                } else if(url.startsWith("/ShoeShop/user/employee/admin/")){
                    if("admin".equals(user.getRole())){
                        chain.doFilter(request, response);
                    }else{
                        res.sendRedirect("/ShoeShop/user/MyAccount.jsp");
                    }
                }
                chain.doFilter(request, response);
            }else{
                res.sendRedirect("/ShoeShop/SignIn.jsp");
            }
        } else if(url.startsWith("/ShoeShop/user/ShoeShop/")){
            int index = 0;
            for(int i = url.length() - 1; ;i-- ){
                if(url.charAt(i) == '/'){
                    index = i;
                    break;
                }
            }
            String sub = "/ShoeShop/" + url.substring(index, url.length());
            res.sendRedirect(sub);
        } else if(url.startsWith("/ShoeShop/user/employee/ShoeShop/user")){
            int index = 0;
            for(int i = url.length() - 1; ;i-- ){
                if(url.charAt(i) == '/'){
                    index = i;
                    break;
                }
            }
            String sub = "/ShoeShop/user/" + url.substring(index, url.length());
            res.sendRedirect(sub);
        } else if(url.startsWith("/ShoeShop/user/employee/ShoeShop")){
            int index = 0;
            for(int i = url.length() - 1; ;i-- ){
                if(url.charAt(i) == '/'){
                    index = i;
                    break;
                }
            }
            String sub = "/ShoeShop/" + url.substring(index, url.length());
            res.sendRedirect(sub);
        } else if(url.startsWith("/ShoeShop/user/employee/admin/ShoeShop/")){
            int index = 0;
            for(int i = url.length() - 1; ;i-- ){
                if(url.charAt(i) == '/'){
                    index = i;
                    break;
                }
            }
            String sub = "/ShoeShop/" + url.substring(index, url.length());
        } else if(url.startsWith("/ShoeShop/user/employee/admin/ShoeShop/user/")){
            int index = 0;
            for(int i = url.length() - 1; ;i-- ){
                if(url.charAt(i) == '/'){
                    index = i;
                    break;
                }
            }
            String sub = "/ShoeShop/user/" + url.substring(index, url.length());
        } else if(url.startsWith("/ShoeShop/user/employee/admin/ShoeShop/user/employee/")){
            int index = 0;
            for(int i = url.length() - 1; ;i-- ){
                if(url.charAt(i) == '/'){
                    index = i;
                    break;
                }
            }
            String sub = "/ShoeShop/user/employee/" + url.substring(index, url.length());
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    


}
