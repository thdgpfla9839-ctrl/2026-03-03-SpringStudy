package com.sist.main4;

public class Proxy {
  private MyDAO m;
  public Proxy(MyDAO m)
  {
	  this.m=m;
  }
  public void getConnection()
  {
	  System.out.println("����Ŭ ����...");
  }
  public void disConnection()
  {
	  System.out.println("����Ŭ ���� ����...");
  }
  // Weaving => ȣ�� 
  // AOP => �븮�� (proxy ����)
  public void select()
  {
	  getConnection();
	  m.select();
	  disConnection(); 
  }
}
