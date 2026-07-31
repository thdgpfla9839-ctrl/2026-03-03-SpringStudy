package com.sist.main;

import org.springframework.stereotype.Component;

import lombok.Data;
// VO�� ������ ó�� => ���������̴� 
@Data
@Component
public class Member {
   private int mno;
   private String name,address,phone;
}
 