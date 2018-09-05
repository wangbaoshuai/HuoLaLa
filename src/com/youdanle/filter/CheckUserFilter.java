package com.youdanle.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckUserFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request =(HttpServletRequest)arg0;
		HttpServletResponse response=(HttpServletResponse)arg1;
		HttpSession session=request.getSession();
		
		String uri=request.getRequestURI();
		uri=uri.substring(uri.lastIndexOf('/')+1);
//		if("login.jsp".equals(uri)||"head.jsp".equals(uri)||"addforum.jsp".equals(uri)||"foot.jsp".equals(uri)||"admin.jsp".equals(uri)||"index3.jsp".equals(uri)||"carreg.jsp".equals(uri)||"comreg.jsp".equals(uri)||"index.jsp".equals(uri)||"showonesub.jsp".equals(uri)){
//			arg2.doFilter(arg0, arg1);
//			return;
//		}
//		if(session.getAttribute("user")==null){
//			response.sendRedirect("login.jsp");
//			return;
//		}
		System.out.println("uuuuuuuuuuu"+uri);
		if("addGet.action".equals(uri)||"addForum.action".equals(uri)){
			response.sendRedirect("login.jsp");
			return;
			
		}

		arg2.doFilter(arg0, arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
