<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>LIKELION Style Landing</title>

<style>

* {
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body {
    font-family:
    Pretendard,
    Arial,
    sans-serif;

    color:#111;
    background:#fff;
}

a {
    text-decoration:none;
    color:inherit;
}

.container {
    width:1200px;
    max-width:calc(100% - 40px);
    margin:auto;
}


/* HEADER */

header {

    height:80px;
    border-bottom:1px solid #eee;

}

.header-inner {

    height:100%;
    display:flex;
    align-items:center;
    justify-content:space-between;

}


.logo {

    font-size:28px;
    font-weight:900;

}


nav {

    display:flex;
    gap:35px;
    font-size:15px;

}


.header-btn {

    background:#111;
    color:white;

    padding:12px 24px;

    border-radius:30px;

}



/* HERO */


.hero {

    padding:120px 0;

}


.hero-inner {

    display:flex;
    align-items:center;
    justify-content:space-between;

}


.hero-text {

    width:50%;

}


.hero-text h2 {

    font-size:64px;
    line-height:1.2;
    font-weight:800;

}


.hero-text p {

    margin-top:30px;

    font-size:20px;
    color:#666;

}


.main-btn {

    margin-top:40px;

    padding:18px 35px;

    border:none;
    border-radius:40px;

    background:#b6ff00;

    font-size:16px;
    font-weight:bold;

}



.hero-image {

    width:420px;
    height:420px;

    background:#111;

    border-radius:40px;

    display:flex;
    align-items:center;
    justify-content:center;

    color:white;

    font-size:40px;
    font-weight:bold;

}



/* SECTION COMMON */


section {

    padding:100px 0;

}


.section-title {

    font-size:42px;

    margin-bottom:50px;

}



/* CARD */


.card-list {

    display:grid;

    grid-template-columns:
    repeat(3,1fr);

    gap:25px;

}



.card {

    padding:35px;

    background:#f7f7f7;

    border-radius:25px;

    min-height:250px;

}



.card h3 {

    font-size:24px;

    margin-bottom:20px;

}


.card p {

    color:#666;

    line-height:1.6;

}



/* PROGRAM */


.program {

    background:#111;

    color:white;

}



.program-list {

    display:grid;

    grid-template-columns:
    repeat(4,1fr);

    gap:20px;

}


.program-item {

    background:#222;

    padding:30px;

    border-radius:20px;

}



/* NUMBER SECTION */


.number {

    display:flex;

    justify-content:space-between;

    text-align:center;

}


.number strong {

    display:block;

    font-size:60px;

}



.number span {

    color:#777;

}



/* REVIEW */


.review-card {

    background:white;

    border:1px solid #eee;

    padding:30px;

    border-radius:25px;

}



/* CTA */


.cta {

    background:#b6ff00;

    border-radius:40px;

    padding:80px;

    text-align:center;

}


.cta h2 {

    font-size:45px;

}


.cta button {

    margin-top:30px;

    padding:15px 35px;

    border:none;

    border-radius:30px;

}



/* FOOTER */


footer {

    background:#111;

    color:white;

    padding:60px 0;

}



/* MOBILE */


@media(max-width:768px){


nav {
    display:none;
}


.hero-inner {

    flex-direction:column;

}


.hero-text {

    width:100%;

}


.hero-text h2 {

    font-size:42px;

}


.hero-image {

    margin-top:50px;

    width:100%;

}


.card-list,
.program-list {

    grid-template-columns:1fr;

}


.number {

    flex-direction:column;

    gap:40px;

}


.cta {

    padding:40px 20px;

}


}


</style>

</head>


<body>


<header>

<div class="container header-inner">

<div class="logo">
LIKELION
</div>


<nav>

<a href="#">교육</a>
<a href="#">이벤트</a>
<a href="#">기업교육</a>
<a href="#">회사소개</a>
<a href="#">채용</a>

</nav>


<a class="header-btn" href="#">
시작하기
</a>


</div>

</header>



<main>



<section class="hero">

<div class="container hero-inner">


<div class="hero-text">

<h2>
상상을 현실로<br>
만드는 개발 교육
</h2>


<p>
아이디어를 직접 서비스로 구현하는
IT 교육 플랫폼
</p>


<button class="main-btn">
무료 시작하기
</button>


</div>


<div class="hero-image">

CODE

</div>


</div>


</section>





<section>

<div class="container">


<h2 class="section-title">
배울 수 있는 과정
</h2>



<div class="card-list">


<div class="card">

<h3>
웹 개발
</h3>

<p>
HTML, CSS, JavaScript부터
서비스 제작까지 경험합니다.
</p>

</div>



<div class="card">

<h3>
AI 교육
</h3>

<p>
AI 기술을 활용해 새로운
프로젝트를 만들어봅니다.
</p>

</div>




<div class="card">

<h3>
창업 프로그램
</h3>

<p>
아이디어를 서비스로
성장시키는 과정입니다.
</p>

</div>



</div>


</div>

</section>






<section class="program">


<div class="container">


<h2 class="section-title">
프로그램
</h2>


<div class="program-list">


<div class="program-item">
Bootcamp
</div>


<div class="program-item">
Community
</div>


<div class="program-item">
Corporate
</div>


<div class="program-item">
AI
</div>


</div>


</div>


</section>





<section>


<div class="container">


<div class="number">


<div>
<strong>10+</strong>
<span>Years</span>
</div>


<div>
<strong>200+</strong>
<span>Programs</span>
</div>


<div>
<strong>50K</strong>
<span>Students</span>
</div>


</div>


</div>


</section>






<section>


<div class="container">


<h2 class="section-title">
수강생 이야기
</h2>



<div class="review-card">

"비전공자도 직접 서비스를 만들 수 있었어요."

<br><br>

- Student Review

</div>



</div>


</section>






<section>


<div class="container">


<div class="cta">


<h2>
새로운 시작을 만들어보세요
</h2>


<button>
지원하기
</button>


</div>


</div>


</section>




</main>




<footer>


<div class="container">

<h3>
LIKELION
</h3>

<br>

<p>
IT Education Platform
</p>


</div>


</footer>



</body>
</html>
