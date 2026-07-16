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
| ┗ 사례 5 | `/projects/sk-group-healing-loyalty` | SK그룹 고객응대직원 힐링&로열티 |
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

## 결정 이력: Projects 사례 구성

- **1차 결정 (2026-07-15)**: 기획서 4번 사이트맵과 5번 핵심내용 사이에 SK그룹 사례 포함 여부가 불일치해 확인한 결과, **6개로 유지, SK그룹 제외**로 확정.
- **2차 결정 (2026-07-16)**: Services 페이지 디자인 핸드오프(임직원 힐링 상세)에서 SK그룹 사례가 다시 등장해 재확인함. **최종적으로 힐링 카테고리는 SK그룹 사례로 확정**하고, 기존 현대중공업(신입사원 활착) 사례는 **일단 6개 목록에서 제외**함.
  - 사유: 현대중공업 사례는 "신입사원 대상"이라 리더십/팀빌딩·조직활성화/임직원 힐링 3개 카테고리와 성격이 다르며, 추후 별도 하위 페이지(가칭 신입사원 온보딩 등)로 추가할 예정. 카테고리 체계가 확정되면 Projects 사례도 7개 이상으로 늘어날 수 있음.
  - Home의 "함께해온 기업 및 기관"(Trusted by) 로고 그리드에는 원래부터 현대중공업과 SK그룹이 모두 포함돼 있어 변경 없음 — 이건 사례 목록과 별개로 "협력 기업 전체 목록"이기 때문.

## 앵커 ID (Services 상세 ↔ Projects 상호링크용)
Services 상세 페이지의 "사례 보기" 버튼이 Projects 목록 페이지의 각 카드로 바로 스크롤 이동함. 카드에 아래 id를 반드시 부여할 것:
`#hyundaikia`(현대기아차그룹), `#samsung`(삼성전자), `#coway`(코웨이), `#snubh`(분당서울대병원), `#sk`(SK그룹), `#fire`(소방공무원)
