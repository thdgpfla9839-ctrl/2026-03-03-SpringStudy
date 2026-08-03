<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NEXUS AI ACADEMY</title>

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

background:#050505;
color:white;

}


.container{

width:1200px;
max-width:90%;
margin:auto;

}


/* HEADER */

header{

position:fixed;
top:0;
width:100%;
z-index:99;

background:
rgba(5,5,5,.75);

backdrop-filter:blur(20px);

}


.header{

height:90px;

display:flex;

align-items:center;

justify-content:space-between;

}


.logo{

font-size:30px;
font-weight:900;

}


.logo span{

color:#00ff88;

}


nav{

display:flex;
gap:35px;

}


nav a{

color:#aaa;

}


nav a:hover{

color:#00ff88;

}


.btn{

padding:15px 30px;

border-radius:40px;

background:#00ff88;

color:#000;

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
#00ff8845,
transparent 35%
),

linear-gradient(
135deg,
#050505,
#162033
);

}



.hero-box{

display:flex;

align-items:center;

justify-content:space-between;

}



.hero h1{

font-size:80px;

line-height:1.1;

letter-spacing:-5px;

}


.hero h1 span{

color:#00ff88;

}



.hero p{

margin-top:30px;

font-size:20px;

color:#aaa;

}


.hero-buttons{

margin-top:40px;

}



.sub{

margin-left:15px;

border:1px solid #555;

background:none;

color:white;

}




.ai{

width:420px;

height:420px;

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


font-size:90px;

font-weight:900;


box-shadow:

0 0 100px #00ff8855;


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



/* COURSE */


.cards{

display:grid;

grid-template-columns:
repeat(3,1fr);

gap:30px;

}



.card{

background:#111;

padding:40px;

border-radius:30px;

border:1px solid #222;

transition:.3s;

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

border-radius:20px;

text-align:center;

}



/* RESULT */


.result{

display:grid;

grid-template-columns:
repeat(4,1fr);

text-align:center;

}



.result strong{

font-size:60px;

color:#00ff88;

}





/* CONTACT */


.contact{

background:#111;

padding:80px;

border-radius:40px;

text-align:center;

}


.contact h2{

font-size:45px;

}



.contact button{

margin-top:40px;

padding:18px 50px;

border:0;

border-radius:50px;

background:#00ff88;

}





footer{

padding:50px 0;

border-top:1px solid #222;

color:#777;

}





@media(max-width:768px){


nav{

display:none;

}


.hero-box{

flex-direction:column;

}


.hero h1{

font-size:45px;

}


.ai{

margin-top:50px;

width:280px;

height:280px;

}



.cards,
.tech,
.result{

grid-template-columns:1fr;

}



}


</style>

</head>


<body>


<header>

<div class="container header">


<div class="logo">

NEXUS<span>.</span>

</div>


<nav>

<a>교육과정</a>
<a>AI</a>
<a>개발</a>
<a>취업</a>
<a>기업교육</a>

</nav>


<a class="btn">

상담신청

</a>


</div>

</header>




<section class="hero">


<div class="container hero-box">


<div>


<h1>

미래를 만드는<br>

<span>AI 개발자</span><br>

교육센터

</h1>


<p>

실무 프로젝트 기반<br>

프리미엄 IT 교육 플랫폼

</p>


<div class="hero-buttons">

<a class="btn">
무료 상담
</a>


<a class="btn sub">
과정 보기
</a>


</div>


</div>


<div class="ai">

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


<div class="cards">


<div class="card">

<h3>AI Developer</h3>

<p>
머신러닝,
LLM,
생성형 AI 개발 과정
</p>

</div>


<div class="card">

<h3>Full Stack</h3>

<p>
React,
Backend,
실전 서비스 제작
</p>

</div>


<div class="card">

<h3>Cloud Engineer</h3>

<p>
AWS,
DevOps,
클라우드 전문가 과정
</p>

</div>


</div>


</div>


</section>





<section>


<div class="container">


<div class="result">


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
<p>취업률</p>
</div>


</div>


</div>


</section>







<section>


<div class="container">


<div class="contact">


<h2>

당신의 개발 커리어를 시작하세요

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
