package com.hotel.configuration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import org.springframework.web.servlet.DispatcherServlet;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

public class WebApplicationConfig implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext ctx) throws ServletException {
		System.out.println("WebApplicationConfig.onStartup()");
		
		//🔹 ROOT CONTEXT (Hibernate, DB, Services)
		AnnotationConfigWebApplicationContext rootContext= new AnnotationConfigWebApplicationContext();
		rootContext.register(RootConfig.class);
		
		ctx.addListener(new ContextLoaderListener(rootContext));
		
		//🔹 WEB CONTEXT (Spring MVC)
		AnnotationConfigWebApplicationContext webContext= new AnnotationConfigWebApplicationContext();
		webContext.register(SpringConfiguration.class);
		
		ServletRegistration.Dynamic dispatcher= ctx.addServlet("dispatcher", new DispatcherServlet(webContext));
		dispatcher.setLoadOnStartup(0);
		dispatcher.addMapping("/");
	}
}
