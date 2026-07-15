-- 수피아HRD 웹사이트 데이터베이스 스키마
-- 로컬(XAMPP phpMyAdmin) 및 운영(Hostinger phpMyAdmin) 동일하게 적용

CREATE TABLE IF NOT EXISTS admin_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 서비스 3종: 리더십 개발 / 팀빌딩·조직활성화 / 임직원 힐링
CREATE TABLE IF NOT EXISTS services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    slug VARCHAR(100) NOT NULL UNIQUE,
    title VARCHAR(150) NOT NULL,
    subtitle VARCHAR(255),
    summary TEXT,
    description TEXT,
    image VARCHAR(255),
    meta_title VARCHAR(255),
    meta_description VARCHAR(255),
    sort_order INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 프로젝트 사례 (현대차그룹, 삼성전자, 코웨이 등)
CREATE TABLE IF NOT EXISTS projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    slug VARCHAR(100) NOT NULL UNIQUE,
    client_name VARCHAR(150) NOT NULL,
    category ENUM('leadership','team-building','healing') NOT NULL,
    program_title VARCHAR(255) NOT NULL,
    summary TEXT,
    description TEXT,
    results_text TEXT,
    image VARCHAR(255),
    is_featured TINYINT(1) DEFAULT 0,
    meta_title VARCHAR(255),
    meta_description VARCHAR(255),
    sort_order INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- About 페이지 섹션 (방법론 / 창립자 소개 등 section_key로 구분)
CREATE TABLE IF NOT EXISTS about_sections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    section_key VARCHAR(50) NOT NULL UNIQUE,
    title VARCHAR(255),
    content TEXT,
    image VARCHAR(255),
    sort_order INT DEFAULT 0,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- About 페이지 내 연혁 타임라인
CREATE TABLE IF NOT EXISTS history_entries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    year VARCHAR(10) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    sort_order INT DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 사이트 전역 설정 (key-value): 연락처, 소셜링크, 홈 히어로 문구, 기본 SEO 메타 등
CREATE TABLE IF NOT EXISTS site_settings (
    setting_key VARCHAR(100) PRIMARY KEY,
    setting_value TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Contact 폼 제출 내역
CREATE TABLE IF NOT EXISTS contact_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    phone VARCHAR(50),
    message TEXT NOT NULL,
    is_read TINYINT(1) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 기본 site_settings row (관리자 페이지에서 값만 채우면 되도록 키를 미리 생성)
-- 페이지별 meta_title/meta_description 출처: Google Drive "수피아 홈페이지 리뉴얼" 폴더 >
-- 수피아HRD_웹사이트 페이지별 메타 문구 정리.docx (2026-07-15 확인)
-- Contact 페이지 메타는 해당 문서에 없어 빈 값으로 둠 — 관리자 페이지에서 채워야 함.
INSERT IGNORE INTO site_settings (setting_key, setting_value) VALUES
    ('company_name', '수피아HRD'),
    ('tagline', '2006년 설립, 국내 최초 조직생태학 기반 기업교육 전문기관'),
    ('hero_heading', ''),
    ('hero_subheading', ''),
    ('address', ''),
    ('phone', ''),
    ('email', ''),
    ('social_linkedin', ''),
    ('social_youtube', ''),
    ('home_meta_title', '숲에서 배우다 | 한국 최초 조직생태학 기반의 교육컨설팅 | 수피아HRD'),
    ('home_meta_description', '2006년에 설립. 한국 최초로 숲을 교실로 활용한 기업교육 서비스 제공. 조직생태학 기반의 리더십·팀빌딩·힐링 교육프로그램 개발. 삼성·현대·LG 등 200개 이상 기업에서 실증. 한국HRD협회로부터 Best Practice 3년 연속 선정.'),
    ('services_meta_title', '리더십.팀빌딩.힐링 교육서비스 | 숲을 교실로, 체험형 학습 | 수피아HRD'),
    ('services_meta_description', '숲을 교실로 활용한 조직생태학 기반의 체험형 교육서비스. 관리자 및 전 직원 대상. 교육 과정별 맞춤 설계. 자연휴양림 연수시설 사용 가능. 200개 이상 기업에서 실증. 한국HRD협회로부터 The Best Practice(2012~2014)로 선정'),
    ('projects_meta_title', '교육 재의뢰율 33% | 숲을 교실로, 여행 같은 교육 | 수피아HRD'),
    ('projects_meta_description', '조직생태학에 기반한 체험·성찰형 학습. 자연과 교감하며 배우는 여행 같은 교육. 교육과정별 맞춤형 설계. 모듈형 단위 프로그램을 활용한 SoC 방식. 삼성전자, 현대자동차, 서울대학교병원, 코웨이 등 다수의 Best Practices 보유.'),
    ('about_meta_title', '숲은 좋은 교실 | 한국 최초 조직생태학 기반의 기업교육 전문기관 | 수피아HRD'),
    ('about_meta_description', '한국 최초의 조직생태학 기반 기업교육 전문기관으로서 2006년부터 숲을 교실로 활용한 기업교육 서비스를 시작. 조직생태학(Organizational Ecology)을 접목한 인재 양성 및 조직 개발 프로그램 개발(유재우 대표) 이후 지난 20년간 조직생태학적 교육방법론을 실증.'),
    ('contact_meta_title', ''),
    ('contact_meta_description', '');

-- 서비스 3종 초기 레코드 (meta_title/meta_description도 위 문서 기준으로 미리 채움)
INSERT IGNORE INTO services (slug, title, meta_title, meta_description, sort_order) VALUES
    ('leadership', '리더십 개발', '리더십 교육 프로그램 | 임원·중간관리자 숲 리더십 연수 | 수피아HRD', '숲 트레킹과 조직생태경영 관점을 결합한 체험형 리더십 교육. 임원·경영진·중간관리자 대상. 현대자동차·LG그룹 검증. 20명 이상 맞춤 설계.', 1),
    ('team-building', '팀빌딩·조직활성화', '팀빌딩 프로그램 · 조직활성화 워크샵 | 소통·협업·조직문화 교육 | 수피아HRD', '공생하는 숲처럼 연결되는 팀빌딩·조직활성화 교육. 코웨이 2014 HRD Best Practice 선정. 분당서울대병원 8차수·롯데제과 12차수 운영. 전 직급 맞춤 설계.', 2),
    ('healing', '임직원 힐링', '힐링HRD · 직원 힐링 프로그램 | 번아웃 예방·회복탄력성 교육 | 수피아HRD', '산림치유와 긍정심리학을 결합한 기업 맞춤형 심신회복 교육. 서울대병원 7년 연속 운영 만족도 4.8. 감정노동 직군 전문 설계. 소방·의료·공공기관 검증.', 3);

-- 관리자 계정은 SQL에 비밀번호를 직접 넣지 않고,
-- tools/create-admin.php 스크립트로 생성합니다 (3단계 코딩 단계에서 제공 예정).
