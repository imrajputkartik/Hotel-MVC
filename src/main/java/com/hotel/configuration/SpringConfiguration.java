package com.hotel.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@EnableWebMvc
@ComponentScan(basePackages= "com.hotel")
@Configuration
public class SpringConfiguration implements WebMvcConfigurer{
	
	@Bean
	public ViewResolver viewResolver() {
		System.out.println("Springconfiguration.viewResolver()");
		InternalResourceViewResolver viewResolver= new InternalResourceViewResolver();
		
		//It specifies that JSTL views should be used.
	      //JstlView is a class provided by the spring framework that is specifically designed to handle JSP pages using JSTL.
		
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/JSP/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

}