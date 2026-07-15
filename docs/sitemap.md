# 사이트맵 / URL 구조

## 퍼블릭 사이트

| 페이지 | URL | 설명 |
|---|---|---|
| Home | `/` | 주요 서비스, 주요 사례, 회사 특장점, 문의 유도 |
| Services (목록) | `/services/` | 3개 서비스 카테고리 카드 목록 |
| ┗ 리더십 개발 | `/services/leadership` | |
| ┗ 팀빌딩·조직활성화 | `/services/team-building` | |
| ┗ 임직원 힐링 | `/services/healing` | |
| Projects (목록) | `/projects/` | 사례 카드 목록 (카테고리 필터 가능) |
| ┗ 사례 1 | `/projects/hyundai-kia-leaders-quest` | 현대기아차그룹 Leader's Quest · 전이(Transfer) |
| ┗ 사례 2 | `/projects/samsung-elite-tree` | 삼성전자 미래목(Elite Tree) · 계열사 전파 |
| ┗ 사례 3 | `/projects/coway-growth-forest` | 코웨이 동반성장의 숲 · HRD Best Practice |
| ┗ 사례 4 | `/projects/snubh-satisfaction` | 분당서울대병원 7년 연속 · 감사패 · 만족도 4.89 |
| ┗ 사례 5 | `/projects/hyundai-heavy-retention` | 현대중공업 신입사원 활착(活着) · 리텐션 |
| ┗ 사례 6 | `/projects/firefighter-ptsd-prevention` | 소방공무원 대상 한국 최초 PTSD 예방교육 · 제도 변화 |
| About us | `/about` | 조직생태학 기반 교육방법론, 창립자 소개, 연혁 |
| Contact | `/contact` | 연락처 정보 + 문의 폼 |

## 관리자 (비공개)

| 화면 | URL | 설명 |
|---|---|---|
| 로그인 | `/admin/login.php` | |
| 대시보드 | `/admin/index.php` | 콘텐츠 유형별 관리 진입점 |
| 서비스 관리 | `/admin/services.php` (+ `service-edit.php?id=`) | 3개 서비스 카테고리 CRUD |
| 프로젝트 관리 | `/admin/projects.php` (+ `project-edit.php?id=`) | 프로젝트 사례 CRUD |
| About 관리 | `/admin/about.php` | 방법론/창립자 소개/연혁 편집 |
| 사이트 설정 | `/admin/settings.php` | 연락처, 소셜링크, 홈 히어로 문구, 기본 SEO 메타 |
| 문의 내역 | `/admin/messages.php` | Contact 폼 제출 내역 조회 |

---

## ⚠️ 확인 필요: Projects 사례 개수 불일치

기획서 4번(사이트맵)에는 **6개 사례**가 나열되어 있는데, 5번(페이지별 핵심 내용)에는 아래처럼 **7개**로 읽히는 설명이 있습니다.

1. 현대자동차 그룹 임원 대상 리더십 교육 → 사례 1(현대기아차그룹)과 매칭
2. 삼성전자 승진자 대상 리더십 교육 → 사례 2(삼성전자)와 매칭
3. 코웨이 전직원 대상 조직활성화 교육 → 사례 3(코웨이)과 매칭
4. 분당서울대학교병원 전직원 대상 조직활성화 교육 → 사례 4와 매칭
5. 현대중공업 주니어사원 대상 팔로우업 교육 → 사례 5와 매칭
6. 소방공무원 대상 힐링 교육 → 사례 6(PTSD 예방교육)과 같은 건지, 별개의 힐링 사례인지 불명확
7. **SK그룹 고객응대직원 대상 힐링&로열티 교육** → 사이트맵 6개 목록에는 없음

**질문**: Projects는 6개로 유지하고 SK그룹 사례는 제외할까요, 아니면 7개(혹은 소방공무원 건을 분리해 8개)로 늘릴까요? 우선 이 문서는 사이트맵 원안대로 **6개**로 작성해뒀고, 답변 주시면 바로 반영하겠습니다.
