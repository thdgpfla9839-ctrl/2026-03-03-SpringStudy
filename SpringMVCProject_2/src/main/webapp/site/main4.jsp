<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NEXUS AI ACADEMY</title>
<!-- Pretendard 폰트 불러오기 -->
<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css" />

<style>
/* CSS Reset & Variables */
:root {
  --bg-main: #030712;
  --bg-card: rgba(17, 24, 39, 0.6);
  --border-card: rgba(255, 255, 255, 0.08);
  --primary: #00ff88;
  --secondary: #3b82f6;
  --accent-glow: rgba(0, 255, 136, 0.25);
  --text-main: #f9fafb;
  --text-sub: #9ca3af;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: "Pretendard", -apple-system, BlinkMacSystemFont, system-ui, Roboto, sans-serif;
  background-color: var(--bg-main);
  color: var(--text-main);
  overflow-x: hidden;
  background-image: 
    radial-gradient(circle at 50% 0%, rgba(59, 130, 246, 0.15), transparent 50%),
    radial-gradient(circle at 80% 20%, rgba(0, 255, 136, 0.1), transparent 40%);
  background-attachment: fixed;
}

a {
  text-decoration: none;
  color: inherit;
  transition: all 0.3s ease;
}

.container {
  width: 1200px;
  max-width: 90%;
  margin: 0 auto;
}

/* HEADER */
header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 1000;
  background: rgba(3, 7, 18, 0.7);
  backdrop-filter: blur(16px);
  border-bottom: 1px solid var(--border-card);
}

.header {
  height: 80px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.logo {
  font-size: 26px;
  font-weight: 900;
  letter-spacing: -1px;
}

.logo span {
  color: var(--primary);
  text-shadow: 0 0 12px var(--primary);
}

nav {
  display: flex;
  gap: 40px;
}

nav a {
  font-weight: 500;
  color: var(--text-sub);
  position: relative;
}

nav a:hover {
  color: var(--primary);
}

/* BUTTONS */
.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 14px 28px;
  border-radius: 50px;
  background: linear-gradient(135deg, var(--primary), #00d26a);
  color: #000;
  font-weight: 700;
  font-size: 15px;
  cursor: pointer;
  box-shadow: 0 0 20px var(--accent-glow);
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  border: none;
}

.btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 0 30px rgba(0, 255, 136, 0.5);
}

.btn.sub {
  background: rgba(255, 255, 255, 0.05);
  border: 1px solid rgba(255, 255, 255, 0.15);
  color: var(--text-main);
  box-shadow: none;
  backdrop-filter: blur(10px);
}

.btn.sub:hover {
  background: rgba(255, 255, 255, 0.1);
  border-color: var(--primary);
  color: var(--primary);
}

/* HERO SECTION */
.hero {
  min-height: 100vh;
  padding-top: 80px;
  display: flex;
  align-items: center;
  position: relative;
}

.hero-box {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 100%;
}

.hero-text {
  max-width: 600px;
}

.hero h1 {
  font-size: 72px;
  line-height: 1.1;
  font-weight: 900;
  letter-spacing: -2px;
}

.hero h1 span {
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.hero p {
  margin-top: 24px;
  font-size: 20px;
  line-height: 1.6;
  color: var(--text-sub);
}

.hero-buttons {
  margin-top: 40px;
  display: flex;
  gap: 16px;
}

/* AI Orb Visual */
.ai-visual {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
}

.ai {
  width: 380px;
  height: 380px;
  border-radius: 50%;
  background: linear-gradient(135deg, var(--primary), var(--secondary));
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 80px;
  font-weight: 900;
  color: #000;
  box-shadow: 0 0 80px var(--accent-glow);
  animation: float 6s ease-in-out infinite, pulse 3s infinite alternate;
  position: relative;
  z-index: 2;
}

.ai-visual::before {
  content: '';
  position: absolute;
  width: 440px;
  height: 440px;
  border-radius: 50%;
  border: 1px dashed rgba(0, 255, 136, 0.3);
  animation: spin 20s linear infinite;
}

@keyframes float {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(-20px); }
}

@keyframes pulse {
  0% { box-shadow: 0 0 50px rgba(0, 255, 136, 0.3); }
  100% { box-shadow: 0 0 100px rgba(59, 130, 246, 0.6); }
}

@keyframes spin {
  100% { transform: rotate(360deg); }
}

/* SECTION GLOBAL */
section {
  padding: 140px 0;
}

.title {
  text-align: center;
  font-size: 44px;
  font-weight: 800;
  margin-bottom: 60px;
  letter-spacing: -1px;
}

.title span {
  color: var(--primary);
}

/* TECH SECTION */
.tech {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  gap: 20px;
}

.tech div {
  background: var(--bg-card);
  border: 1px solid var(--border-card);
  backdrop-filter: blur(10px);
  padding: 30px;
  border-radius: 20px;
  text-align: center;
  font-weight: 700;
  font-size: 18px;
  transition: all 0.3s ease;
}

.tech div:hover {
  border-color: var(--primary);
  transform: translateY(-5px);
  box-shadow: 0 10px 25px -5px rgba(0, 255, 136, 0.15);
  color: var(--primary);
}

/* COURSE CARDS */
.cards {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 30px;
}

.card {
  background: var(--bg-card);
  backdrop-filter: blur(12px);
  padding: 40px;
  border-radius: 24px;
  border: 1px solid var(--border-card);
  transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  position: relative;
  overflow: hidden;
}

.card::before {
  content: '';
  position: absolute;
  top: 0; left: 0; width: 100%; height: 3px;
  background: linear-gradient(90deg, transparent, var(--primary), transparent);
  opacity: 0;
  transition: opacity 0.3s ease;
}

.card:hover {
  transform: translateY(-10px);
  border-color: rgba(0, 255, 136, 0.4);
  box-shadow: 0 20px 40px -15px rgba(0, 0, 0, 0.5);
}

.card:hover::before {
  opacity: 1;
}

.card h3 {
  font-size: 24px;
  font-weight: 700;
  margin-bottom: 16px;
}

.card p {
  color: var(--text-sub);
  line-height: 1.6;
  font-size: 16px;
}

/* RESULT SECTION */
.result {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 20px;
  background: var(--bg-card);
  border: 1px solid var(--border-card);
  padding: 50px;
  border-radius: 24px;
  text-align: center;
}

.result strong {
  display: block;
  font-size: 52px;
  font-weight: 900;
  background: linear-gradient(135deg, var(--primary), #ffffff);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  margin-bottom: 8px;
}

.result p {
  color: var(--text-sub);
  font-size: 16px;
}

/* CONTACT SECTION */
.contact {
  background: linear-gradient(135deg, rgba(0, 255, 136, 0.1), rgba(59, 130, 246, 0.05));
  border: 1px solid rgba(0, 255, 136, 0.2);
  backdrop-filter: blur(20px);
  padding: 80px 40px;
  border-radius: 32px;
  text-align: center;
  position: relative;
  overflow: hidden;
}

.contact h2 {
  font-size: 40px;
  font-weight: 800;
  margin-bottom: 10px;
}

/* FOOTER */
footer {
  padding: 60px 0;
  border-top: 1px solid var(--border-card);
  color: #6b7280;
  font-size: 14px;
  line-height: 1.8;
}

/* RESPONSIVE DESIGN */
@media (max-width: 1024px) {
  .hero h1 { font-size: 56px; }
  .cards { grid-template-columns: repeat(2, 1fr); }
  .tech { grid-template-columns: repeat(3, 1fr); }
}

@media (max-width: 768px) {
  nav { display: none; }
  
  .hero-box {
    flex-direction: column;
    text-align: center;
  }
  
  .hero-text { margin-bottom: 60px; }
  
  .hero h1 { font-size: 42px; }
  
  .hero-buttons {
    justify-content: center;
  }

  .ai {
    width: 240px;
    height: 240px;
    font-size: 50px;
  }
  
  .ai-visual::before {
    width: 280px;
    height: 280px;
  }

  .cards, .tech, .result {
    grid-template-columns: 1fr;
  }
  
  .result { gap: 40px; }
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
      <a href="#courses">교육과정</a>
      <a href="#tech">핵심기술</a>
      <a href="#results">성과</a>
      <a href="#contact">상담문의</a>
    </nav>
    <a class="btn">상담신청</a>
  </div>
</header>

<section class="hero">
  <div class="container hero-box">
    <div class="hero-text">
      <h1>미래를 만드는<br><span>AI 개발자</span><br>교육센터</h1>
      <p>실무 프로젝트 기반의 차세대 프리미엄 IT 교육 플랫폼.<br>NEXUS에서 당신의 커리어를 재정의하세요.</p>
      <div class="hero-buttons">
        <a class="btn">무료 상담 신청</a>
        <a class="btn sub">과정 살펴보기</a>
      </div>
    </div>
    <div class="ai-visual">
      <div class="ai">AI</div>
    </div>
  </div>
</section>

<section id="tech">
  <div class="container">
    <h2 class="title">핵심 <span>TECH</span></h2>
    <div class="tech">
      <div>Python</div>
      <div>AI / LLM</div>
      <div>React</div>
      <div>Cloud</div>
      <div>Data Engine</div>
    </div>
  </div>
</section>

<section id="courses">
  <div class="container">
    <h2 class="title">교육 <span>PROGRAM</span></h2>
    <div class="cards">
      <div class="card">
        <h3>AI Developer</h3>
        <p>머신러닝 알고리즘, LLM 응용 및 최신 생성형 AI 서비스 개발 실무 과정</p>
      </div>
      <div class="card">
        <h3>Full Stack</h3>
        <p>React 프론트엔드와 Node/Python 백엔드를 아우르는 실전 웹 서비스 제작</p>
      </div>
      <div class="card">
        <h3>Cloud Engineer</h3>
        <p>AWS 기반 클라우드 인프라 구축, DevOps 파이프라인 자동화 전문가 과정</p>
      </div>
    </div>
  </div>
</section>

<section id="results">
  <div class="container">
    <div class="result">
      <div>
        <strong>50K+</strong>
        <p>누적 수강생</p>
      </div>
      <div>
        <strong>98%</strong>
        <p>수강 만족도</p>
      </div>
      <div>
        <strong>300+</strong>
        <p>완성된 프로젝트</p>
      </div>
      <div>
        <strong>95%</strong>
        <p>취업/이직률</p>
      </div>
    </div>
  </div>
</section>

<section id="contact">
  <div class="container">
    <div class="contact">
      <h2>당신의 개발 커리어를 시작하세요</h2>
      <p style="color: var(--text-sub); margin-top: 10px;">전문 멘토진이 1:1 맞춤 상담을 도와드립니다.</p>
      <button class="btn" style="margin-top: 30px;">무료 상담 신청하기</button>
    </div>
  </div>
</section>

<footer>
  <div class="container">
    <strong>NEXUS AI ACADEMY</strong><br>
    AI · WEB · DATA EDUCATION<br>
    <span style="opacity: 0.5;">© NEXUS. All rights reserved.</span>
  </div>
</footer>

</body>
</html>