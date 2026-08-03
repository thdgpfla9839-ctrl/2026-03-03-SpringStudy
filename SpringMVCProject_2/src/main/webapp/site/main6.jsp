<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIST 쌍용교육센터 | 프리미엄 IT 교육</title>
    
    <!-- Pretendard WebFont -->
    <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css" />

    <style>
        :root {
            --primary: #0052cc;
            --primary-dark: #071d49;
            --primary-light: #2684ff;
            --accent: #00e5ff;
            --bg-light: #f8fafc;
            --text-main: #0f172a;
            --text-sub: #475569;
            --border-color: rgba(226, 232, 240, 0.8);
            --shadow-sm: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
            --shadow-lg: 0 20px 25px -5px rgba(0, 0, 0, 0.08), 0 8px 10px -6px rgba(0, 0, 0, 0.01);
            --shadow-glow: 0 10px 30px rgba(0, 82, 204, 0.25);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Pretendard", -apple-system, BlinkMacSystemFont, system-ui, Roboto, sans-serif;
            color: var(--text-main);
            background-color: #ffffff;
            word-break: keep-all;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            width: 1200px;
            max-width: 90%;
            margin: auto;
        }

        /* ---------------- HEADER ---------------- */
        header {
            height: 80px;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border-color);
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            transition: all 0.3s ease;
        }

        .header {
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo img {
            height: 38px;
            display: block;
        }

        nav {
            display: flex;
            gap: 40px;
            font-size: 16px;
            font-weight: 600;
        }

        nav a {
            color: var(--text-sub);
            transition: color 0.2s ease;
            position: relative;
        }

        nav a:hover {
            color: var(--primary);
        }

        nav a::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background-color: var(--primary);
            transition: width 0.2s ease;
        }

        nav a:hover::after {
            width: 100%;
        }

        .apply-btn {
            background: linear-gradient(135deg, var(--primary), var(--primary-light));
            color: white;
            padding: 12px 26px;
            border-radius: 30px;
            font-weight: 700;
            font-size: 15px;
            box-shadow: 0 4px 14px rgba(0, 82, 204, 0.3);
            transition: all 0.3s ease;
        }

        .apply-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(0, 82, 204, 0.4);
        }

        /* ---------------- HERO BANNER ---------------- */
        .hero {
            margin-top: 80px;
            min-height: 560px;
            background: radial-gradient(circle at 80% 20%, rgba(38, 132, 255, 0.15) 0%, transparent 40%),
                        linear-gradient(135deg, #04122d 0%, #071d49 50%, #0a2d72 100%);
            color: white;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            padding: 60px 0;
        }

        .hero-text {
            max-width: 650px;
        }

        .badge-hero {
            display: inline-block;
            background: rgba(0, 229, 255, 0.1);
            color: var(--accent);
            border: 1px solid rgba(0, 229, 255, 0.3);
            padding: 6px 16px;
            border-radius: 20px;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 20px;
            letter-spacing: 0.5px;
        }

        .hero h1 {
            font-size: 52px;
            font-weight: 800;
            line-height: 1.25;
            letter-spacing: -1px;
        }

        .hero h1 span {
            background: linear-gradient(120deg, #60a5fa, var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            margin-top: 20px;
            font-size: 19px;
            color: #94a3b8;
            font-weight: 400;
            line-height: 1.6;
        }

        .hero-buttons {
            margin-top: 40px;
            display: flex;
            gap: 15px;
        }

        .hero button {
            padding: 16px 36px;
            border: 0;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-white {
            background: #ffffff;
            color: var(--primary-dark);
            box-shadow: 0 4px 15px rgba(255, 255, 255, 0.2);
        }

        .btn-white:hover {
            transform: translateY(-2px);
            background: #f1f5f9;
        }

        .btn-blue {
            background: rgba(255, 255, 255, 0.08);
            color: #ffffff;
            border: 1px solid rgba(255, 255, 255, 0.2) !important;
            backdrop-filter: blur(10px);
        }

        .btn-blue:hover {
            background: rgba(255, 255, 255, 0.15);
            transform: translateY(-2px);
        }

        .hero-image {
            width: 360px;
            height: 320px;
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.08), rgba(255, 255, 255, 0.02));
            border: 1px solid rgba(255, 255, 255, 0.15);
            border-radius: 24px;
            backdrop-filter: blur(20px);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            box-shadow: var(--shadow-glow);
            position: relative;
        }

        .hero-image::before {
            content: '</>';
            font-size: 80px;
            font-weight: 900;
            background: linear-gradient(135deg, #ffffff, var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* ---------------- SECTION COMMON ---------------- */
        section {
            padding: 100px 0;
        }

        .title {
            text-align: center;
            font-size: 38px;
            font-weight: 800;
            margin-bottom: 60px;
            letter-spacing: -0.5px;
        }

        .title span {
            color: var(--primary);
        }

        .sub-title {
            text-align: center;
            font-size: 16px;
            color: var(--primary);
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 10px;
            display: block;
        }

        /* ---------------- COURSE SECTION ---------------- */
        .course-list {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
        }

        .course {
            padding: 40px 30px;
            border-radius: 20px;
            background: #ffffff;
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-color);
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .course:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
            border-color: rgba(0, 82, 204, 0.3);
        }

        .course-tag {
            display: inline-block;
            align-self: flex-start;
            padding: 4px 12px;
            background: #eff6ff;
            color: var(--primary);
            font-size: 13px;
            font-weight: 700;
            border-radius: 6px;
            margin-bottom: 20px;
        }

        .course h3 {
            font-size: 24px;
            font-weight: 700;
            color: var(--primary-dark);
            margin-bottom: 16px;
        }

        .course-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            margin-top: 20px;
        }

        .course-tags span {
            background: #f1f5f9;
            color: var(--text-sub);
            padding: 6px 12px;
            border-radius: 8px;
            font-size: 13px;
            font-weight: 500;
        }

        /* ---------------- WHY SECTION ---------------- */
        .why {
            background: var(--bg-light);
            border-top: 1px solid var(--border-color);
            border-bottom: 1px solid var(--border-color);
        }

        .why-list {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }

        .why-card {
            background: #ffffff;
            padding: 40px 24px;
            text-align: center;
            border-radius: 20px;
            border: 1px solid var(--border-color);
            box-shadow: var(--shadow-sm);
            transition: all 0.3s ease;
        }

        .why-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        .why-card strong {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 60px;
            height: 60px;
            border-radius: 16px;
            background: #eff6ff;
            font-size: 24px;
            color: var(--primary);
            margin-bottom: 20px;
            font-weight: 800;
        }

        .why-card h4 {
            font-size: 18px;
            font-weight: 700;
            color: var(--text-main);
        }

        /* ---------------- STATUS SECTION ---------------- */
        .status-container {
            background: linear-gradient(135deg, var(--primary-dark), #0a2d72);
            border-radius: 24px;
            padding: 60px 40px;
            color: white;
            box-shadow: var(--shadow-glow);
        }

        .status {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            text-align: center;
        }

        .status-item {
            border-right: 1px solid rgba(255, 255, 255, 0.1);
        }

        .status-item:last-child {
            border-right: none;
        }

        .status strong {
            font-size: 48px;
            font-weight: 800;
            background: linear-gradient(180deg, #ffffff, #93c5fd);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            display: block;
        }

        .status p {
            margin-top: 8px;
            color: #94a3b8;
            font-size: 16px;
            font-weight: 500;
        }

        /* ---------------- PORTFOLIO SECTION ---------------- */
        .portfolio {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
        }

        .portfolio-card {
            height: 260px;
            border-radius: 20px;
            background: linear-gradient(135deg, var(--primary-dark), var(--primary));
            position: relative;
            overflow: hidden;
            box-shadow: var(--shadow-sm);
            display: flex;
            align-items: flex-end;
            padding: 30px;
            color: white;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .portfolio-card::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            background: radial-gradient(circle at top right, rgba(0, 229, 255, 0.3), transparent 60%);
        }

        .portfolio-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
        }

        .portfolio-content {
            position: relative;
            z-index: 2;
        }

        .portfolio-content h4 {
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 6px;
        }

        .portfolio-content p {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.7);
        }

        /* ---------------- APPLY BANNER ---------------- */
        .apply {
            background: linear-gradient(135deg, #0052cc 0%, #002966 100%);
            color: white;
            border-radius: 28px;
            padding: 80px 40px;
            text-align: center;
            position: relative;
            overflow: hidden;
            box-shadow: var(--shadow-glow);
        }

        .apply h2 {
            font-size: 42px;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .apply p {
            font-size: 18px;
            color: rgba(255, 255, 255, 0.8);
            margin-bottom: 36px;
        }

        .apply button {
            padding: 20px 50px;
            border: 0;
            background: #ffffff;
            color: var(--primary-dark);
            font-size: 18px;
            font-weight: 800;
            border-radius: 14px;
            cursor: pointer;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease;
        }

        .apply button:hover {
            transform: translateY(-3px) scale(1.02);
            background: #f8fafc;
        }

        /* ---------------- FOOTER ---------------- */
        footer {
            background: #090d16;
            color: #64748b;
            padding: 60px 0;
            border-top: 1px solid #1e293b;
            font-size: 14px;
        }

        footer h3 {
            color: white;
            font-size: 20px;
            margin-bottom: 12px;
        }

        /* ---------------- MOBILE RESPONSIVE ---------------- */
        @media (max-width: 992px) {
            .course-list, .why-list, .portfolio {
                grid-template-columns: repeat(2, 1fr);
            }
            .status {
                grid-template-columns: repeat(2, 1fr);
                gap: 30px 0;
            }
            .status-item:nth-child(2) {
                border-right: none;
            }
        }

        @media (max-width: 768px) {
            nav { display: none; }
            .hero { text-align: center; }
            .hero-content { flex-direction: column; justify-content: center; }
            .hero h1 { font-size: 36px; }
            .hero-buttons { justify-content: center; }
            .hero-image { display: none; }
            
            .course-list, .why-list, .portfolio {
                grid-template-columns: 1fr;
            }

            .status {
                grid-template-columns: 1fr;
                gap: 30px 0;
            }
            .status-item {
                border-right: none;
                border-bottom: 1px solid rgba(255, 255, 255, 0.1);
                padding-bottom: 20px;
            }
            .status-item:last-child {
                border-bottom: none;
                padding-bottom: 0;
            }

            .apply h2 { font-size: 30px; }
        }
        /* --- HERO CAROUSEL CONTAINER --- */
        /* ---------------- HERO LAYOUT BALANCE ---------------- */
.hero-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    padding: 70px 0;
    gap: 50px; /* 좌우 콘텐츠 사이 간격을 적절히 확보 */
}

.hero-text {
    flex: 1; /* 왼쪽 텍스트가 자연스럽게 넓은 영역 차지 */
    max-width: 620px;
}

/* ---------------- LARGER HERO CAROUSEL ---------------- */
.hero-image {
    width: 1024px; /* 기존 380px에서 460px로 큼직하게 확대 */
    height: 450px; /* 기존 320px에서 380px로 확대 */
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid rgba(255, 255, 255, 0.18);
    border-radius: 28px;
    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.3), var(--shadow-glow);
    position: relative;
    overflow: hidden;
    flex-shrink: 0; /* 화면이 줄어들어도 크기가 유동적으로 찌그러지지 않음 */
}

/* 캐러셀 트랙 */
.carousel-track {
    display: flex;
    width: 300%;
    height: 100%;
    animation: autoSlide 12s infinite ease-in-out;
}

/* 개별 슬라이드 크기 확대 반응 */
.carousel-slide {
    width: 33.333%;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 40px 30px;
    text-align: center;
    box-sizing: border-box;
}

/* 내부 타이포그래피 & 아이콘 크기 조정 */
.slide-badge {
    background: rgba(0, 229, 255, 0.15);
    color: var(--accent);
    padding: 6px 16px;
    border-radius: 20px;
    font-size: 13px;
    font-weight: 700;
    margin-bottom: 20px;
    letter-spacing: 1px;
}

.slide-icon {
    font-size: 80px; /* 기존 64px에서 대형 확대 */
    font-weight: 900;
    background: linear-gradient(135deg, #ffffff, var(--accent));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    margin-bottom: 12px;
}

.slide-techs {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    justify-content: center;
    margin-bottom: 24px;
}

.slide-techs span {
    background: rgba(255, 255, 255, 0.1);
    color: #fff;
    padding: 8px 18px;
    border-radius: 20px;
    font-size: 15px;
    font-weight: 600;
    border: 1px solid rgba(255, 255, 255, 0.2);
}

.slide-price {
    font-size: 72px; /* 기존 56px에서 대형 확대 */
    font-weight: 900;
    color: #ffffff;
    line-height: 1;
    margin-bottom: 12px;
    background: linear-gradient(180deg, #ffffff, #60a5fa);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.slide-text {
    font-size: 18px;
    color: #e2e8f0;
    font-weight: 600;
}

/* 하단 Dot 위치 조절 */
.carousel-dots {
    position: absolute;
    bottom: 24px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 10px;
}

.dot {
    width: 10px;
    height: 10px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.3);
}

/* --- AUTO SLIDE ANIMATION --- */
@keyframes autoSlide {
    0%, 28% {
        transform: translateX(0%);
    }
    33%, 61% {
        transform: translateX(-33.333%);
    }
    66%, 95% {
        transform: translateX(-66.666%);
    }
    100% {
        transform: translateX(0%);
    }
}

/* ---------------- RESPONSIVE ADJUSTMENT ---------------- */
@media (max-width: 1024px) {
    .hero-image {
        width: 380px;
        height: 320px;
    }
    .slide-icon { font-size: 64px; }
    .slide-price { font-size: 56px; }
}
    </style>
</head>

<body>

<!-- HEADER -->
<header>
    <div class="container header">
        <div class="logo">
            <a href="#"><img src="https://www.sist.co.kr/img/logo.png" alt="SIST 쌍용교육센터"></a>
        </div>
        <nav>
            <a href="#">교육과정</a>
            <a href="#">국비지원</a>
            <a href="#">취업지원</a>
            <a href="#">수강후기</a>
            <a href="#">센터소개</a>
        </nav>
        <a href="#" class="apply-btn">수강신청</a>
    </div>
</header>

<!-- HERO BANNER -->
<section class="hero">
    <div class="container hero-content">
        <div class="hero-text">
            <span class="badge-hero">NCS 국비지원 100% 무상교육</span>
            <h1>실무 중심 IT 교육으로<br><span>성공적인 개발 커리어</span>를 시작하세요</h1>
            <p>JAVA · SPRING · AI · CLOUD · DATA<br>수많은 기업이 검증한 체계적인 취업 연계 리더십 교육 과정</p>
            <div class="hero-buttons">
                <button class="btn-white">교육과정 둘러보기</button>
                <button class="btn-blue">1:1 무료 상담</button>
            </div>
        </div>
       
<div class="hero-image">
    <div class="carousel-track">
        <!-- 슬라이드 1 -->
        <div class="carousel-slide">
            <div class="slide-badge">PRACTICE</div>
            <div class="slide-icon">&lt;/&gt;</div>
            <div class="slide-text">실무 중심 코딩 프로젝트</div>
        </div>

        <!-- 슬라이드 2 -->
        <div class="carousel-slide">
            <div class="slide-badge">TECH STACK</div>
            <div class="slide-techs">
                <span>Java</span>
                <span>Spring</span>
                <span>AI</span>
                <span>Cloud</span>
            </div>
            <div class="slide-text">최신 트렌드 기술 스택</div>
        </div>

        <!-- 슬라이드 3 -->
        <div class="carousel-slide">
            <div class="slide-badge">BENEFIT</div>
            <div class="slide-price">100%</div>
            <div class="slide-text">국비 지원 무상 교육</div>
        </div>
    </div>

    <!-- 하단 인디케이터 바 -->
    <div class="carousel-dots">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>
</div>
    </div>
</section>

<!-- COURSES SECTION -->
<section>
    <div class="container">
        <span class="sub-title">Curriculum</span>
        <h2 class="title">모집 중인 <span>추천 교육과정</span></h2>
        
        <div class="course-list">
            <div class="course">
                <div>
                    <span class="course-tag">모집중</span>
                    <h3>JAVA 백엔드 개발자 과정</h3>
                    <p style="color: var(--text-sub); font-size: 15px;">Java 기반 프레임워크 구축부터 웹 서비스 프로젝트까지 완성하는 과정입니다.</p>
                </div>
                <div class="course-tags">
                    <span>Java</span>
                    <span>Spring Boot</span>
                    <span>Oracle</span>
                    <span>JPA</span>
                </div>
            </div>

            <div class="course">
                <div>
                    <span class="course-tag">인기</span>
                    <h3>AI 데이터 분석 & 모델링</h3>
                    <p style="color: var(--text-sub); font-size: 15px;">파이썬을 활용해 머신러닝, 딥러닝 기반 AI 서비스 모델을 구축합니다.</p>
                </div>
                <div class="course-tags">
                    <span>Python</span>
                    <span>PyTorch</span>
                    <span>Machine Learning</span>
                </div>
            </div>

            <div class="course">
                <div>
                    <span class="course-tag">마감임박</span>
                    <h3>클라우드 DevOps 엔지니어</h3>
                    <p style="color: var(--text-sub); font-size: 15px;">AWS 인프라와 컨테이너 기술을 활용한 현대적 서버 구축 아키텍처 실습.</p>
                </div>
                <div class="course-tags">
                    <span>AWS</span>
                    <span>Docker</span>
                    <span>Kubernetes</span>
                    <span>Linux</span>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- WHY SECTION -->
<section class="why">
    <div class="container">
        <span class="sub-title">Why SIST</span>
        <h2 class="title">왜 <span>쌍용교육센터</span>인가?</h2>
        
        <div class="why-list">
            <div class="why-card">
                <strong>01</strong>
                <h4>실무 밀착형 프로젝트</h4>
            </div>
            <div class="why-card">
                <strong>02</strong>
                <h4>베테랑 전문 강사진</h4>
            </div>
            <div class="why-card">
                <strong>03</strong>
                <h4>1:1 맞춤 취업 컨설팅</h4>
            </div>
            <div class="why-card">
                <strong>04</strong>
                <h4>탄탄한 협력기업 네트워크</h4>
            </div>
        </div>
    </div>
</section>

<!-- STATUS SECTION -->
<section>
    <div class="container">
        <div class="status-container">
            <div class="status">
                <div class="status-item">
                    <strong>10,000+</strong>
                    <p>누적 수료생</p>
                </div>
                <div class="status-item">
                    <strong>95%</strong>
                    <p>평균 취업률</p>
                </div>
                <div class="status-item">
                    <strong>300+</strong>
                    <p>실무 프로젝트</p>
                </div>
                <div class="status-item">
                    <strong>200+</strong>
                    <p>협력 기업 체결</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- PORTFOLIO SECTION -->
<section>
    <div class="container">
        <span class="sub-title">Student Portfolio</span>
        <h2 class="title">수강생 <span>포트폴리오</span></h2>
        
        <div class="portfolio">
            <div class="portfolio-card">
                <div class="portfolio-content">
                    <h4>AI 기반 스마트 서비스</h4>
                    <p>딥러닝 기반 맞춤형 추천 엔진 웹 플랫폼</p>
                </div>
            </div>
            <div class="portfolio-card">
                <div class="portfolio-content">
                    <h4>기업형 ERP 웹 플랫폼</h4>
                    <p>Spring Boot & React 기반 통합 관리 시스템</p>
                </div>
            </div>
            <div class="portfolio-card">
                <div class="portfolio-content">
                    <h4>빅데이터 분석 시각화</h4>
                    <p>실시간 데이터 파이프라인 구축 및 대시보드</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- APPLY BANNER -->
<section>
    <div class="container">
        <div class="apply">
            <h2>지금 당신의 IT 커리어를 시작하세요</h2>
            <p>전문 상담사가 맞춤 교육 과정 및 국비 지원 혜택을 상세히 안내해 드립니다.</p>
            <button>무료 취업 상담 신청하기</button>
        </div>
    </div>
</section>

<!-- FOOTER -->
<footer>
    <div class="container">
        <h3>SIST 쌍용교육센터</h3>
        <p>서울특별시 마포구  | 문의: 02-1234-5678</p>
        <p style="margin-top: 10px; opacity: 0.6;">© SIST. All rights reserved.</p>
    </div>
</footer>

</body>
</html>