package com.sist.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
/*
 *    ������̼� 
 *    -------- 80% 20% => XML
 *    1) �޸� �Ҵ�� Ŭ���� ���� (Ŭ���� ����) => ã��/����
 *       ***@Controller 
 *          MVC ���� View(JSP) ��ȯ�ϴ� ��Ʈ�ѷ� 
 *          => JSP / ThymeLeaf => ȭ�� ���� 
 *       ***@RestController
 *          JSON / XML �����͸� ��ȯ�ϴ� ��� => Rest API ��Ʈ�ѷ� 
 *          => ���������� ��ȯ�� �ȴ� (�ڵ����� JSON���� ��ȯ) 
 *       @Component 
 *          => �޸� �Ҵ� => �Ϲ� Ŭ���� 
 *          => ��� Ŭ������ ��� (���� Ŭ����) 
 *       @Service 
 *          => �����Ͻ� ���� ���� 
 *             ---------- DAO / Manager 
 *          User == DispatcherServlet == Service == DAO == Oralce
 *                         |
 *                     JSP / HTML
 *       @Repository 
 *          => DAO : �����ͺ��̽� ���� 
 *          
 *       @Configuration 
 *          => XML�� ��ü => �����ϰ� �ڹ� ���� 
 *          
 *       ***@ControllerAdvice / @RestControllerAdvice 
 *          => ���뿹��ó�� 
 */
public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        ApplicationContext app=
        		new ClassPathXmlApplicationContext("app.xml");
        Member m=(Member)app.getBean("member");
        System.out.println(m);
        
        Food f=new Food();
	}

}
