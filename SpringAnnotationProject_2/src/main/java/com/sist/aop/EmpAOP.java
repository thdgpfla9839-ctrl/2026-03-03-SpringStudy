package com.sist.aop;

import java.util.List;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import com.sist.vo.DeptVO;
import com.sist.vo.EmpVO;

// �������� ���Ǵ� Ŭ���� 
@Aspect
@Component 
/*
 *   JoinPoint => ���� (��� ȣ��) 
 *     @Before 
 *     @After
 *     @After-Returning 
 *     @Around
 *     @After-Throwing 
 *   PointCut => � �޼ҵ忡 ���� 
 *   ------------- Advice 
 *   
 *   public String display()
 *   {
 *       @Before 
 *       try
 *       {
 *          ---------------@Around => before
 *            => setAutoCommit(false)
 *            
 *            => commit()
 *            
 *            => � �޼ҵ� ȣ�� => ���� 
 *               
 *            => ���� ==> log 
 *          ---------------@Around => after
 *          �α� / Ʈ����� => AOP 
 *       }catch(Exception e)
 *       {
 *          --------------> @After-Throwing : ���� ó�� 
 *       }
 *       finally
 *       {
 *          -------- @After
 *       }
 *       
 *       return "��"  -----> @After-Returning  : ���ϰ� �ޱ�
 *       
 *       
 *   }
 *   
 *   * com.sist.service.EmpServiceImpl.*())
 *   -- ������              Ŭ����        �޼ҵ� �Ű�����
 *                                          |��� �Ű����� ���ų� ������ ����
 *      | ��� ������                    | ��� �޼ҵ�
 */
public class EmpAOP {
   @Before("execution(* com.sist.service.EmpServiceImpl.*(..))")
   public void before()
   {
	   System.out.println("�޼ҵ� ������...");
   }
   @After("execution(* com.sist.service.EmpServiceImpl.*(..))")
   public void after()
   {
	   System.out.println("�޼ҵ� ������...");
   }
   @Around("execution(* com.sist.service.EmpServiceImpl.*(..))")
   // �����丵 / �ڵ帮�� 
   public Object around(ProceedingJoinPoint jp)
   throws Throwable
   {
	   Object obj=null;
	   long start=System.currentTimeMillis();
	   System.out.println("ȣ��� �޼ҵ�:"+jp.getSignature().getName());
	   // �޼ҵ� ȣ�� =>  ����
	   obj=jp.proceed();
	   
	   long end=System.currentTimeMillis();
	   System.out.println("�ɸ� �ð�:"+(end-start)+"MS");
	   return obj;
   }
   @AfterReturning(value = "execution(* com.sist.service.EmpServiceImpl.*(..))",
		   returning = "obj")
   public void afterReturn(Object obj)
   {
	   if(obj instanceof List)
	   {
		  List<?> list=(List<?>)obj; // Object ? => �� �� ��� 
		  for(Object item:list)
		  {
			  if(item instanceof EmpVO)
			  {
				  EmpVO vo=(EmpVO)item;
				  System.out.println(vo.getEmpno()+" "
						  +vo.getEname()+" "
						  +vo.getJob()+" "
						  +vo.getDbday());
			  }
			  if(item instanceof DeptVO)
			  {
				  DeptVO vo=(DeptVO)item;
				  System.out.println(vo.getDeptno()+" "
						  +vo.getDname()+" "
						  +vo.getLoc());
			  }
		  }
	   }
	  
   }
   @AfterThrowing(value = "execution(* com.sist.service.EmpServiceImpl.*(..))"
		         ,throwing = "ex")
   public void AfterThrowing(Throwable ex)
   {
	   ex.printStackTrace();
   }
}
