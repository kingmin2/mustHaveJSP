package utils;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class JSFunction {

	//메시지 알림창을 띄운 후 명시한 URL로 이동
	public static void alertLocation(String msg, String url, JspWriter out) throws IOException {
		
		String script = "" 
					  + "<script>"
					  + "    alert('" + msg + "');"
					  + "    location.href='"+ url +"';"
					  + "</script>";
		out.print(script);
	}
	
	public static void alertBack(String msg, JspWriter out) throws IOException {
		
		String script = "" 
				  + "<script>"
				  + "    alert('" + msg + "');"
				  + "    history.back();"
				  + "</script>";
		out.print(script);
	}
	
}
