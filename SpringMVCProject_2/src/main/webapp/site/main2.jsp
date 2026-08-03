<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS AI Academy</title>


<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800;900&display=swap');


*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}


body{

    font-family:Poppins, "Pretendard", sans-serif;

    background:#050505;

    color:white;

}


a{
    color:inherit;
    text-decoration:none;
}



.container{

    width:1200px;

    max-width:90%;

    margin:auto;

}



/* HEADER */


header{

    position:fixed;

    width:100%;

    top:0;

    z-index:100;

    backdrop-filter:blur(20px);

    background:rgba(0,0,0,.5);

}


.header-inner{

    height:90px;

    display:flex;

    align-items:center;

    justify-content:space-between;

}


.logo{

    font-size:28px;

    font-weight:900;

}


.logo span{

    color:#00ff88;

}



nav{

    display:flex;

    gap:40px;

    color:#ccc;

}


nav a:hover{

    color:#00ff88;

}



.header-btn{

    background:#00ff88;

    color:#000;

    padding:14px 28px;

    border-radius:40px;

    font-weight:bold;

}



/* HERO */


.hero{

    height:100vh;

    display:flex;

    align-items:center;


    background:

    radial-gradient(
    circle at 80% 30%,
    #00ff8840,
    transparent 30%
    ),

    linear-gradient(
    135deg,
    #050505,
    #111827
    );

}



.hero-content{

    display:flex;

    align-items:center;

    justify-content:space-between;

}


.hero-text{

    width:55%;

}



.hero h1{

    font-size:85px;

    line-height:1.1;

    font-weight:900;

    letter-spacing:-5px;


}



.hero h1 span{

    background:
    linear-gradient(
    90deg,
    #00ff88,
    #00aaff
    );


    -webkit-background-clip:text;

    color:transparent;

}



.hero p{

    margin-top:30px;

    color:#aaa;

    font-size:20px;

}



.buttons{

    margin-top:45px;

}



.btn{

    display:inline-block;

    padding:18px 40px;

    border-radius:50px;

    margin-right:15px;

}



.primary{

    background:#00ff88;

    color:#000;

}



.secondary{

    border:1px solid #555;

}





.ai-box{


    width:400px;

    height:400px;


    border-radius:50%;


    background:

    linear-gradient(
    135deg,
    #00ff88,
    #2563ff
    );


    display:flex;

    align-items:center;

    justify-content:center;


    font-size:70px;

    font-weight:900;


    box-shadow:

    0 0 100px #00ff8855;


    animation:float 4s infinite;

}



@keyframes float{


50%{

transform:translateY(-25px);

}


}





/* SECTION */


section{

    padding:120px 0;

}



.title{

    text-align:center;

    font-size:50px;

    margin-bottom:70px;

}



.title span{

    color:#00ff88;

}



/* TECH */


.tech{

    display:grid;

    grid-template-columns:
    repeat(5,1fr);

    gap:20px;

}



.tech div{


    background:#111;

    padding:35px;

    border-radius:25px;

    text-align:center;

    font-size:20px;

}





/* COURSE */


.course-list{


display:grid;

grid-template-columns:
repeat(3,1fr);


gap:30px;


}



.card{


background:

rgba(255,255,255,.05);


border:

1px solid rgba(255,255,255,.1);


padding:40px;


border-radius:30px;


transition:.4s;


}



.card:hover{


transform:translateY(-15px);


border-color:#00ff88;


}



.card h3{

font-size:28px;

margin-bottom:20px;

}


.card p{

color:#aaa;

line-height:1.7;

}





/* NUMBER */


.stats{


display:grid;

grid-template-columns:
repeat(4,1fr);


text-align:center;


}


.stats strong{


font-size:60px;

color:#00ff88;


}





/* PROJECT */


.project{


display:grid;

grid-template-columns:
repeat(3,1fr);

gap:30px;

}



.project div{


height:250px;


border-radius:25px;


background:

linear-gradient(
135deg,
#222,
#111
);


display:flex;

align-items:center;

justify-content:center;


font-size:25px;


}



/* CONTACT */


.contact{


background:#111;

border-radius:40px;

padding:80px;

text-align:center;


}



.contact h2{

font-size:45px;

}



.contact button{


margin-top:40px;

padding:18px 50px;

border:none;

border-radius:40px;


background:#00ff88;


font-weight:bold;


}



/* FOOTER */


footer{

padding:50px 0;

border-top:1px solid #222;

color:#777;

}



/* MOBILE */


@media(max-width:768px){


nav{

display:none;

}


.hero-content{

flex-direction:column;

}



.hero-text{

width:100%;

}



.hero h1{

font-size:45px;

}



.ai-box{

margin-top:50px;

width:280px;

height:280px;

}



.tech,

.course-list,

.project,

.stats{

grid-template-columns:1fr;

}


.contact{

padding:40px 20px;

}


}



</style>


</head>


<body>



<header>


<div class="container header-inner">


<div class="logo">

NEXUS<span>.</span>

</div>


<nav>

<a href="#">교육과정</a>

<a href="#">AI</a>

<a href="#">개발</a>

<a href="#">취업지원</a>

<a href="#">기업교육</a>

</nav>


<a class="header-btn">

상담신청

</a>


</div>


</header>





<section class="hero">


<div class="container hero-content">


<div class="hero-text">


<h1>

미래를 만드는<br>

<span>AI 개발자</span>

교육센터

</h1>


<p>

실무 프로젝트 기반 교육으로

당신의 개발 커리어를 성장시킵니다.

</p>


<div class="buttons">


<a class="btn primary">
무료 상담
</a>


<a class="btn secondary">
과정 보기
</a>


</div>


</div>



<div class="ai-box">

AI

</div>



</div>


</section>






<section>


<div class="container">


<h2 class="title">

핵심 <span>TECH</span>

</h2>



<div class="tech">


<div>Python</div>

<div>AI</div>

<div>React</div>

<div>Cloud</div>

<div>Data</div>


</div>


</div>


</section>







<section>


<div class="container">


<h2 class="title">

교육 <span>PROGRAM</span>

</h2>



<div class="course-list">


<div class="card">

<h3>
AI Developer
</h3>

<p>
Python 기반 AI 모델 개발,
ChatGPT 활용,
머신러닝 프로젝트
</p>

</div>



<div class="card">

<h3>
Full Stack
</h3>

<p>
React와 Backend 기술로
실제 서비스를 제작합니다.
</p>

</div>




<div class="card">

<h3>
Data Engineer
</h3>

<p>
데이터 분석과 클라우드
기술을 학습합니다.
</p>

</div>


</div>


</div>


</section>







<section>


<div class="container">


<div class="stats">


<div>
<strong>50K+</strong>
<p>교육생</p>
</div>


<div>
<strong>98%</strong>
<p>만족도</p>
</div>


<div>
<strong>300+</strong>
<p>프로젝트</p>
</div>


<div>
<strong>95%</strong>
<p>취업성공</p>
</div>


</div>


</div>


</section>






<section>


<div class="container">


<h2 class="title">

PROJECT

</h2>


<div class="project">

<div>AI 서비스</div>

<div>Web Platform</div>

<div>Data Project</div>


</div>


</div>


</section>







<section>


<div class="container">


<div class="contact">


<h2>

당신의 개발 커리어를

시작하세요

</h2>


<button>

무료 상담 신청

</button>


</div>


</div>


</section>






<footer>


<div class="container">

NEXUS AI ACADEMY

<br><br>

AI · WEB · DATA EDUCATION

</div>


</footer>



</body>

</html>
