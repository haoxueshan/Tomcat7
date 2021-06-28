package as;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;

public class Bb extends HttpServlet {
	public static String cs(String name ,String mm ,HttpServletRequest req, HttpServletResponse response) throws IOException{
		Date newtime=new Date();
		PrintWriter out = response.getWriter();
		Cookie c1=new Cookie(name,mm);
		Cookie[] Coookies=req.getCookies();
		String bc=req.getParameter("radio");
		if(bc.equals("shi")){
			response.addCookie(c1);
			c1.setMaxAge(60*60*24);
		}else if (bc.equals("fou")) {
			c1.setMaxAge(0);
			response.addCookie(c1);
		}
		response.setStatus(response.SC_MOVED_TEMPORARILY);
	    response.setHeader("Location", "/as/e.jsp"); 
		return null;
	}
	public static void gz(HttpServletRequest req) {
		HttpSession session = req.getSession(true);
		int number=0;

	    if(session.isNew()){
	    	number++;
			String str=String.valueOf(number);
			session.setAttribute("count", str);
				}
	}
    protected void doGet(HttpServletRequest req, HttpServletResponse response)
            throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("ÔËÐÐ");
		String name=new String(req.getParameter("zh").getBytes("ISO8859-1"),"UTF-8");
		String pasword=req.getParameter("mm");
		if(!("admin".equals(name) && "123456".equals(pasword))){
			response.sendRedirect("erro.jsp"); 
//			response.setStatus(302);
//			response.setHeader("Location", "/as/erro.jsp");
//			System.out.println("111");
		}
		else {
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			gz(req);
			cs(name, pasword, req, response);   
		}


 }

}

