# 2026-03-03-SpringStudy
# 🌱 Spring 스터디 정리

## 📌 목차

- [x] Spring 기본 개념 (DI · IoC · MVC · ORM · Security)
- [x] Spring Container · DI (XML 설정)
- [x] Spring MVC 흐름
- [x] REST API
- [x] 컨트롤러에서 데이터 받는 방법
- [x] 어노테이션 기반 설정 · AOP
- [x] Git 연동 · CI/CD 배포

> 아래 각 항목을 클릭하면 상세 내용이 펼쳐집니다.

---

<details>
<summary><b>Spring 기본 개념 (DI · IoC · MVC · ORM · Security)</b></summary>

### 1. 스프링을 쓰는 이유

개발자가 오직 핵심 로직에만 집중할 수 있게 하기 위함.

```plain text
클래스 수정 → 다른 클래스에 영향 (의존성 때문)
→ 스프링이 객체 생성 / 관리 / 소멸까지 담당해서 이를 방지
→ 핵심: 결합성이 낮은 프로그램 개발 = 유지보수에 유리
```

### 2. 핵심 개념 5가지

| 개념 | 의미 |
|---|---|
| **DI** (Dependency Injection, 의존성 주입) | 객체를 내가 `new`로 만들지 않고 스프링이 만들어서 넣어준다. 목적: 결합성을 낮춰 유지보수를 쉽게 한다 |
| **IoC** (Inversion of Control, 제어의 역전) | 객체를 생성하고 관리하는 주도권이 개발자 → 스프링으로 넘어감 |
| **MVC** (Model-View-Controller) | 역할을 나눠서 개발하는 구조. Model: 데이터 처리 / View: 화면(JSP) / Controller: 요청을 받아 Model과 View를 연결 |
| **ORM** (Object Relational Mapping) | 객체(Java)와 데이터베이스(DB)를 연결하는 기술, SQL을 더 편하게 사용할 수 있게 해준다. 대표적으로 MyBatis, JPA(Hibernate) |
| **Security** | 로그인·로그아웃·권한 관리·인증을 담당하는 보안 기능 (예: 관리자만 관리자 페이지 접근) |

```plain text
DI       → 결합성을 낮춘다
MVC      → 역할을 분리한다
ORM      → Java 객체와 DB를 연결한다
Security → 로그인과 권한 등 보안을 담당한다
```

</details>

<details>
<summary><b>Spring Container · DI (XML 설정)</b></summary>

### 1. 빈(Bean) 등록 방식

스프링 컨테이너가 객체(Bean)를 생성 / 관리 / 소멸까지 담당한다. XML로 빈을 등록하는 방법은 여러 가지가 있다.

```xml
<!-- 생성자 인자를 index로 지정 -->
<bean id="mem1" class="com.sist.main.Member"
  init-method="init" destroy-method="destory">
  <constructor-arg value="1" index="0"/>
  <constructor-arg value="홍길동" index="1"/>
  <constructor-arg value="서울" index="2"/>
  <constructor-arg value="1111-1111" index="3"/>
</bean>

<!-- value 태그로 지정 -->
<bean id="mem2" class="com.sist.main.Member">
  <constructor-arg><value>2</value></constructor-arg>
  <constructor-arg><value>심청이</value></constructor-arg>
</bean>

<!-- c 네임스페이스 - 가장 많이 사용 -->
<bean id="mem3" class="com.sist.main.Member"
 c:mno="3" c:name="이순신" c:address="강원" c:phone="3333-3333"/>
```

> `init-method` / `destroy-method`는 빈이 생성·소멸될 때 자동 호출되는 메소드를 지정한다. `c:` 네임스페이스를 쓰면 `<constructor-arg>`를 매번 안 써도 돼서 가장 간결하다.

</details>

<details>
<summary><b>Spring MVC 흐름</b></summary>

### 1. 스프링 MVC 요청 처리 흐름

```plain text
요청 (main/main.do)
      ↓
DispatcherServlet
      ↓
WebApplicationContext
      ↓
HandlerMapping → @Controller / @RestController를 찾는다
      ↓
찾은 클래스의 메소드 호출 (return, model.addAttribute() 처리)
      ↓
ViewResolver가 return 값을 받아 jsp를 찾는다
      ↓
jsp에서 model에 등록된 데이터 출력
```

> `.do` 확장자로 요청이 오면 DispatcherServlet이 이를 받아 처리하도록 `web.xml`에 매핑이 설정되어 있다.

```xml
<!-- web.xml -->
<servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
```

</details>

<details>
<summary><b>REST API</b></summary>

### 1. HTTP 메소드 어노테이션

```java
@Controller
@RequestMapping("board/")
public class MainController {

   @GetMapping("insert.do")   // 입력폼 / 상세보기
   public String board_insert() {
       return "board/insert";
   }
}
```

| 어노테이션 | 용도 |
|---|---|
| `@GetMapping` | 주로 SELECT — 입력폼이나 상세보기를 출력할 때 |
| `@PostMapping` | INSERT — 회원가입처럼 `<form>` 태그가 들어갈 때 |
| `@PutMapping` | UPDATE |
| `@DeleteMapping` | DELETE |
| `@RequestMapping` | 위 4가지를 통합해서 사용하는 방식 |

> 웹에서는 주로 `@GetMapping` / `@PostMapping` 두 가지를 사용한다.

### 2. @Controller vs @RestController

| 구분 | @Controller | @RestController |
|---|---|---|
| 리턴값 | 문자열(jsp 경로) → ViewResolver가 jsp를 찾아감 | 데이터 자체(객체, Map, List 등) |
| 반환 형식 | HTML(jsp) | JSON으로 자동 변환되어 응답 |
| 사용처 | 화면(jsp)을 그대로 출력할 때 | Vue 같은 프론트엔드에 데이터만 전달할 때 |

```java
@CrossOrigin(origins = "*")   // 다른 도메인(Vue 개발서버 등)에서의 요청 허용
@RestController
@RequiredArgsConstructor
public class FoodRestController {

   private final FoodService service;

   @GetMapping("food/list.do")
   public Map food_list(String page) {
       Map map = new HashMap();
       if (page == null) page = "1";
       int curpage = Integer.parseInt(page);
       final int ROWSIZE = 12;
       int start = (curpage * ROWSIZE) - ROWSIZE;

       List<FoodVO> list = service.foodListData(start);
       int totalpage = service.foodTotalPage();

       map.put("list", list);
       map.put("curpage", curpage);
       map.put("totalpage", totalpage);
       return map;   // 별도 변환 코드 없이 자동으로 JSON 응답이 됨
   }
}
```

> `@RestController`를 쓰면 리턴한 객체(Map, VO, List 등)가 자동으로 JSON으로 변환되어 응답된다. `@CrossOrigin`은 Vue처럼 다른 포트/도메인에서 오는 요청(CORS)을 허용해주는 어노테이션이다.

### 3. 프론트엔드(Vue)와의 통신

```plain text
Vue(Axios) ── GET/POST 요청 ──▶ @RestController
                                       │ 서비스 로직 처리
           ◀──── JSON 응답 ───────────┘
```

> Ajax의 `$.ajax()`가 하던 역할을 Vue에서는 Axios가 대신하며, `@RestController`가 반환한 JSON을 그대로 받아 화면에 뿌린다.

</details>

<details>
<summary><b>컨트롤러에서 데이터 받는 방법</b></summary>

요청값은 request 대신 매개변수로 직접 받을 수 있다. 받는 방법은 크게 4가지다.

```java
// 1. HttpServletRequest로 받기
@PostMapping("insert_ok.do")
public String board_insert_ok(HttpServletRequest request, HttpServletResponse response) {
   String name = request.getParameter("name");
   String subject = request.getParameter("subject");
   BoardVO vo = new BoardVO();
   vo.setName(name);
   vo.setSubject(subject);
   request.setAttribute("vo", vo);
   return "board/list";
}

// 2. 데이터형에 맞는 매개변수로 바로 받기
@PostMapping("insert_ok2.do")
public String board_insert_ok2(String name, String subject, String content, String pwd, Model model) {
   BoardVO vo = new BoardVO();
   vo.setName(name);
   vo.setSubject(subject);
   model.addAttribute("vo", vo);
   return "board/list";
}

// 3. 커맨드 객체(VO)로 한 번에 받기
@PostMapping("insert_ok3.do")
public String board_insert_ok3(BoardVO vo, Model model) {
   model.addAttribute("vo", vo);
   return "board/list";
}
```

| 방법 | 설명 |
|---|---|
| 모든 데이터를 String으로 받기 | `int`는 정수형 변환이 안 되면 오류가 나기 때문에 String으로 받는 것이 안전 |
| 데이터형에 맞게 받기 | 파라미터 이름만 일치하면 스프링이 자동으로 바인딩 |
| 커맨드 객체(VO) 이용 | VO 필드명과 파라미터 이름이 일치하면 한 번에 객체로 받아짐 |
| 내장 객체 이용 | request, response, model, session 등을 매개변수로 바로 받을 수 있음 |

</details>

<details>
<summary><b>어노테이션 기반 설정 · AOP</b></summary>

### 1. 어노테이션 기반 설정

XML(`<context:component-scan>`) 대신 자바 클래스로 설정할 수 있다.

```java
@Configuration
@ComponentScan(basePackages = {"com.sist.*"})
@EnableAspectJAutoProxy   // AOP 사용 설정
public class DAOConfig {
}
```

### 2. AOP (Aspect Oriented Programming)

공통으로 들어가는 처리(연결/해제 등)를 메소드 앞뒤에 자동으로 끼워 넣는 방식. 기존 OOP 방식은 메소드마다 연결·해제 코드를 직접 넣어야 했다면, AOP는 이를 분리해서 관리한다.

```java
@Aspect
@Component
public class DAOAspect {
   @Autowired
   private MyDAO mDao;

   @Before("execution(* com.sist.main3.MyDAO.db*(..))")
   public void before() {
       mDao.getConnection();
   }
   @After("execution(* com.sist.main3.MyDAO.db*(..))")
   public void after() {
       mDao.disConnection();
   }
}
```

```java
@Repository
public class MyDAO {
   public void dbselect() {
       // getConnection() / disConnection()을 직접 안 써도
       // AOP가 자동으로 앞뒤에서 실행해줌
       System.out.println("데이터 읽기");
   }
}
```

> `execution(* com.sist.main3.MyDAO.db*(..))`처럼 포인트컷을 지정하면, 이름이 `db`로 시작하는 모든 메소드 실행 전후에 `before()` / `after()`가 자동 실행된다.

</details>

<details>
<summary><b>Git 연동 · CI/CD 배포</b></summary>

### 1. 명령어로 깃허브에 올리기

```bash
cd 프로젝트경로
git init
git remote add origin 깃허브리포짓토리주소
git branch -M main
git add .
git commit -m "커밋 내용"
git push -u origin main --force   # 처음 올릴 때만 강제 푸시
```

> 이후 깃허브 저장소 설정에서 기본 브랜치를 `main`으로 바꾸고 `master` 브랜치는 삭제한다. CI/CD 배포 시 브랜치가 꼬이는 걸 방지하기 위함이다.

### 2. Self-hosted Runner 등록

```bash
# 우분투 서버 접속
ssh sist@우분투아이피

mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.336.0.tar.gz -L (다운로드 링크)
tar xzf ./actions-runner-linux-x64-2.336.0.tar.gz

./config.sh --url https://github.com/(계정)/(레포명) --token (토큰)
```

> 깃허브 저장소 → Settings → Actions → Runners에서 러너가 정상 등록됐는지 확인한다.

### 3. 배포 흐름 정리

```plain text
프로젝트 수정 후 커밋 & 푸시
      ↓
GitHub Actions(.yml)가 지정된 브랜치 기준으로 자동 실행
      ↓
우분투 서버의 러너(./run.sh)가 빌드 수행
      ↓
톰캣 webapps 경로에 반영
      ↓
브라우저에서 http://우분투IP:8080/프로젝트명 접속 확인
```

> `.yml` 파일이 위치한 브랜치와 소스 브랜치가 반드시 일치해야 한다 — GitHub Actions는 워크플로우 파일이 있는 브랜치 기준으로 실행되기 때문이다.

</details>
