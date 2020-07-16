package com.exam;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

//스프링 = IOC/DI 와 AOP 기능을 지원하는 객체(Bean)들을 담고있는 컨테이너= ApplicationContext

public class AppMain {
	
	
	public static void main(String[] args) {		
//		MyApp myApp = new MyApp();
		
		//클래스패스에서 "/com/exam/context.xml" 설정파일에 적혀있는대로
		//객체들을 생성하여  ApplicationContext를 생성
		//ApplicationContext == 스프링본체==객체를 담고있는 컨테이너
		
		ApplicationContext context = new ClassPathXmlApplicationContext("/com/exam/context.xml");
		
		//MyConfig클래스에 자바로 작성한 설정내용대로 스프링 객체 컨테이너 생성
//		ApplicationContext context = new AnnotationConfigApplicationContext(MyConfig.class);
				
		MyApp myApp = (MyApp) context.getBean("ma"); //스프링에 "ma"라는 이름으로 등록되어 있는 개체 가져오기
//		MyApp myApp = context.getBean(MyApp.class); //스프링에 등록되어 있는 객체 중 "MyApp 타입의 객체 가져오기
		
		MyApp myApp2 = (MyApp) context.getBean("ma");
		System.out.println(myApp == myApp2);
		
		myApp.sayHello();
		myApp.sayBye();
				
		String[] names = context.getBeanDefinitionNames();
		for (String n : names) {
			System.out.println(n);
		}
		
	}

}
