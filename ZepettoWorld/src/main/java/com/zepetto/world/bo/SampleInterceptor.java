package com.zepetto.world.bo;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SampleInterceptor extends HandlerInterceptorAdapter {
	

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		
		System.out.println("pre handle.....");
	
		HandlerMethod method = (HandlerMethod) handler;
		Method methodobj = method.getMethod();

		System.out.println("Bean :: " + method.getBean());
		System.out.println("Method :: " + methodobj);
		
		return true;		
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("post handler....");
		
		Object result = modelAndView.getModel().get("result");
		
		if(result != null) {
			request.getSession().setAttribute("result", result);
			response.sendRedirect("/interceptor/doA");
		}
	
		
	}
}
