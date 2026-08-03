package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;
public interface FoodMapper {
   @Select("SELECT no,name,poster,address "
		  +"FROM food "
		  +"ORDER BY no ASC "
		  +"OFFSET #{start} ROWS FETCH NEXT 12 ROWS ONLY")
   public List<FoodVO> foodListData(int start);
   
   @Select("SELECT CEIL(COUNT(*)/12.0) FROM food")
   public int foodTotalPage();
   
   // <select id="foodFindListData" resultType="FoodVO" parameterType="hashmap">
   public List<FoodVO> foodFindListData(Map map);
   // <select id="foodFindTotalPage" resultType="int" parameterType="hashmap">
   public int foodFindTotalPage(Map map);
   /*
    *   NO                                        NOT NULL NUMBER
		 NAME                                               VARCHAR2(100)
		 TYPE                                               VARCHAR2(100)
		 PHONE                                              VARCHAR2(30)
		 ADDRESS                                            VARCHAR2(260)
		 SCORE                                              NUMBER(2,1)
		 PARKING                                            VARCHAR2(200)
		 POSTER                                             VARCHAR2(260)
		 TIME                                               VARCHAR2(50)
		 CONTENT                                            CLOB
		 THEME                                              VARCHAR2(4000)
		 PRICE  
    */
   @Select("SELECT no,name,type,phone,address,score,parking,poster, "
		  +"time,content,theme,price "
		  +"FROM food "
		  +"WHERE no=#{no}")
   public FoodVO foodDetailData(int no);
}
