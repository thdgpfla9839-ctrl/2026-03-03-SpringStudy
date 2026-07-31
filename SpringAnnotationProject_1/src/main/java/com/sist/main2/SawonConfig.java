package com.sist.main2;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
// => Boot���� �߽� 
@Configuration
public class SawonConfig {
  /*
   *    <bean id="sa" class="com.sist.main2.Sawon"
   *       p:sabun="1"
   *       p:name="��û��"
   *       p:dept="���ߺ�"
   *       p:loc="�λ�"
   *    /> 
   */
   @Bean("sa")
   public Sawon sawon()
   {
	   Sawon s=new Sawon();
	   s.setSabun(1);
	   s.setName("��û��");
	   s.setDept("���ߺ�");
	   s.setLoc("�λ�");
	   
	   return s;
   }
}
