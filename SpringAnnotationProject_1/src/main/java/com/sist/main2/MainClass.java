package com.sist.main2;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
/*
 *   �Ϲ� Container 
 *       ApplicationContext
 *   ��  Container 
 *       WebApplicationContext
 *   ������̼� Container
 *       AnnotationConfigApplicationContext
 *       
 *   *** �������� ������ �ƴϴ� : ���ø����̼ǿ� => ���� (Ŭ������ �����ϰ� Ŭ������ ���� ���)
 *   *** ��Ʋ�� / �ڹ� 
 *       => ���� 
 *          @
 *          public fun aaa():String => �ڹٴ� �״�� ����� ���� 
 *                                  => JVM  
 *          var / val 
 *          |����  |��� 
 */
public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        AnnotationConfigApplicationContext app=
        	new AnnotationConfigApplicationContext(SawonConfig.class);
        
        Sawon s=(Sawon)app.getBean("sa");
        System.out.println(s.getSabun());
        System.out.println(s.getName());
        System.out.println(s.getDept());
        System.out.println(s.getLoc());
	}

}
