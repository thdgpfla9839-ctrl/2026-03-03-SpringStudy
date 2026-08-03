<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>SIST 쌍용교육센터</title>


<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
}

body{

font-family:
"Pretendard",
Arial,
sans-serif;

color:#222;

background:#fff;

}


a{
text-decoration:none;
color:inherit;
}


.container{

width:1200px;

max-width:90%;

margin:auto;

}



/* HEADER */

header{

height:80px;

background:white;

border-bottom:1px solid #eee;

position:fixed;

top:0;

width:100%;

z-index:100;


}


.header{

height:100%;

display:flex;

align-items:center;

justify-content:space-between;

}



.logo{

font-size:28px;

font-weight:900;

color:#003b73;

}



.logo span{

color:#0066ff;

}



nav{

display:flex;

gap:35px;

font-size:16px;

}


nav a:hover{

color:#0066ff;

}



.apply-btn{

background:#0066ff;

color:white;

padding:14px 28px;

border-radius:5px;

}



/* MAIN BANNER */


.hero{


margin-top:80px;


height:520px;


background:


linear-gradient(
110deg,
#003b73,
#0066ff
);


color:white;


display:flex;

align-items:center;


}


.hero-content{

display:flex;

justify-content:space-between;

align-items:center;

}



.hero h1{


font-size:55px;

line-height:1.3;


}



.hero h1 span{

color:#8ee7ff;

}



.hero p{

margin-top:25px;

font-size:20px;

opacity:.9;

}



.hero-buttons{

margin-top:35px;

}



.hero button{


padding:16px 35px;

border:0;

border-radius:5px;

font-weight:bold;

margin-right:10px;


}



.btn-white{

background:white;

color:#003b73;

}


.btn-blue{

background:#002957;

color:white;

}




.hero-image{


width:350px;

height:280px;


background:

rgba(255,255,255,.15);


border-radius:25px;


display:flex;

align-items:center;

justify-content:center;


font-size:70px;

font-weight:900;


}



/* SECTION */


section{

padding:90px 0;

}



.title{

text-align:center;

font-size:38px;

margin-bottom:50px;

}


.title span{

color:#0066ff;

}




/* COURSE */


.course-list{


display:grid;


grid-template-columns:

repeat(3,1fr);


gap:30px;


}



.course{


padding:35px;


border-radius:15px;


background:white;


box-shadow:

0 10px 30px rgba(0,0,0,.08);


border-top:5px solid #0066ff;


transition:.3s;


}



.course:hover{


transform:translateY(-10px);


}



.course h3{

font-size:25px;

color:#003b73;

margin-bottom:15px;


}



.course p{

color:#666;

line-height:1.7;

}



/* WHY */


.why{


background:#f5f8fc;


}



.why-list{


display:grid;


grid-template-columns:

repeat(4,1fr);


gap:20px;


}



.why-card{


background:white;


padding:35px 20px;


text-align:center;


border-radius:15px;


}



.why-card strong{


display:block;


font-size:40px;


color:#0066ff;


margin-bottom:15px;


}





/* STATUS */


.status{


display:grid;


grid-template-columns:

repeat(4,1fr);


text-align:center;


}


.status strong{


font-size:55px;


color:#003b73;


}



.status p{

margin-top:10px;

color:#777;

}




/* PORTFOLIO */


.portfolio{


display:grid;


grid-template-columns:

repeat(3,1fr);


gap:25px;


}



.portfolio div{


height:220px;


border-radius:15px;


background:


linear-gradient(
135deg,
#003b73,
#0066ff
);


display:flex;


align-items:center;


justify-content:center;


color:white;


font-size:24px;


font-weight:bold;


}




/* APPLY */


.apply{


background:#003b73;


color:white;


border-radius:20px;


padding:60px;


text-align:center;


}



.apply h2{


font-size:40px;


}



.apply button{


margin-top:30px;


padding:18px 50px;


border:0;


background:#fff;


color:#003b73;


font-weight:bold;


border-radius:5px;


}





/* FOOTER */


footer{


background:#222;


color:#aaa;


padding:50px 0;


}



footer h3{

color:white;

}




/* MOBILE */


@media(max-width:768px){


nav{

display:none;

}



.hero-content{


flex-direction:column;


}



.hero h1{


font-size:38px;


}



.hero-image{


margin-top:30px;


width:250px;

height:180px;


}



.course-list,

.why-list,

.status,

.portfolio{


grid-template-columns:1fr;


}


}


</style>

</head>



<body>



<header>

<div class="container header">


<div class="logo">

<img src="https://www.sist.co.kr/img/logo.png">

</div>


<nav>

<a href="#">교육과정</a>

<a href="#">국비지원</a>

<a href="#">취업지원</a>

<a href="#">수강후기</a>

<a href="#">센터소개</a>


</nav>


<a class="apply-btn">

수강신청

</a>


</div>

</header>




<section class="hero">


<div class="container hero-content">


<div>


<h1>

실무 중심 IT 교육으로<br>

<span>개발 전문가</span>가 되세요

</h1>


<p>

JAVA · SPRING · AI · CLOUD · DATA

<br>

기업이 원하는 기술을 배우는 취업 교육센터

</p>


<div class="hero-buttons">


<button class="btn-white">

교육과정 보기

</button>


<button class="btn-blue">

무료 상담

</button>


</div>


</div>



<div class="hero-image">

CODE

</div>



</div>


</section>





<section>


<div class="container">


<h2 class="title">

모집중인 <span>교육과정</span>

</h2>



<div class="course-list">


<div class="course">

<h3>

JAVA 백엔드 개발자

</h3>

<p>

Java

Spring

Oracle

웹 프로젝트

취업 포트폴리오

</p>

</div>



<div class="course">

<h3>

AI 데이터 개발자

</h3>

<p>

Python

Machine Learning

AI 서비스 개발

</p>

</div>



<div class="course">

<h3>

클라우드 엔지니어

</h3>

<p>

AWS

Docker

DevOps

서버 구축

</p>

</div>


</div>


</div>


</section>







<section class="why">


<div class="container">


<h2 class="title">

왜 <span>SIST 쌍용</span> 인가?

</h2>


<div class="why-list">


<div class="why-card">

<strong>01</strong>

실무 프로젝트

</div>


<div class="why-card">

<strong>02</strong>

전문 강사진

</div>


<div class="why-card">

<strong>03</strong>

취업 컨설팅

</div>


<div class="why-card">

<strong>04</strong>

기업 연계

</div>


</div>


</div>


</section>








<section>


<div class="container">


<div class="status">


<div>

<strong>10K+</strong>

<p>수료생</p>

</div>


<div>

<strong>95%</strong>

<p>취업지원</p>

</div>


<div>

<strong>300+</strong>

<p>프로젝트</p>

</div>


<div>

<strong>200+</strong>

<p>협력기업</p>

</div>


</div>


</div>


</section>







<section>


<div class="container">


<h2 class="title">

수강생 <span>Portfolio</span>

</h2>


<div class="portfolio">


<div>

AI 서비스

</div>


<div>

웹 플랫폼

</div>


<div>

데이터 분석

</div>


</div>


</div>


</section>







<section>


<div class="container">


<div class="apply">


<h2>

지금 시작하는 IT 커리어

</h2>


<button>

무료 상담 신청

</button>


</div>


</div>


</section>








<footer>


<div class="container">


<h3>

SIST 쌍용교육센터

</h3>


<br>


<p>

JAVA · AI · WEB · CLOUD 교육 전문

</p>


</div>


</footer>




</body>

</html>