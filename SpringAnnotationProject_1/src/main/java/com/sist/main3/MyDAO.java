package com.sist.main3;

import org.springframework.stereotype.Repository;

@Repository
public class MyDAO {
  public void getConnection()
  {
	  System.out.println("����Ŭ ����...");
  }
  public void disConnection()
  {
	  System.out.println("����Ŭ ���� ����...");
  }
  // OOP => AOP   
  public void dbselect()
  {
	  //getConnection();//
	  System.out.println("������ �б�"); // �ٽ� ��� 
	  //disConnection();// => ���� ��� 
  }
  public void dbinsert()
  {
	  //getConnection(); 
	  System.out.println("������ �߰�");
	  //disConnection();
  }
  public void dbupdate() // db*
  {
	  //getConnection();
	  System.out.println("������ ����");
	  //disConnection();
  }
  public void dbdelete()
  {
	  //getConnection();
	  System.out.println("������ ����");
	  //disConnection();
  }
}
