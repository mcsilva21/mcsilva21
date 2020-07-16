
--회원 정보(member) 저장을 위한 테이블 생성
--회원 아이디 mem_id  문자열(최대 : 50 바이트)
--회원 비밀번호 mem_pass  문자열(최대 : 50 바이트)
--회원 이름 mem_name  문자열(최대 : 50 바이트)
--회원 포인트 mem_point  숫자(최대 : 10자리 정수)
CREATE TABLE member (
mem_id VARCHAR2(50),
mem_pass VARCHAR2(50),
mem_name VARCHAR2(50),
mem_point NUMBER(10,0),
PRIMARY KEY (mem_id)
);

INSERT INTO member
(mem_id, mem_pass, mem_name, mem_point)
VALUES
('a001','1234','고길동',100);

--//a001 회원의 포인트를 777로 변경하는 프로그램을 작성하세요.
UPDATE member SET mem_point = 77 where MEM_ID = 'a001';
commit;

SELECT * FROM MEMBER;

SELECT mem_id, mem_pass, mem_name, mem_point FROM MEMBER;
SELECT * FROM MEMBER;


CREATE TABLE student (
stu_no VARCHAR2(50), --학번
stu_name VARCHAR2(50), --이름
stu_score NUMBER(10,0), --성적
PRIMARY KEY (stu_no)
);

-- 게시판 
CREATE TABLE bbs(
bbs_no NUMBER(10,0), --글 번호
bbs_title VARCHAR2(100), --글제목
bbs_content CLOB,  --글내용
bbs_writer VARCHAR2(50), --작성자(아이디)
bbs_reg_date DATE DEFAULT SYSDATE, --글등록일(작성일)
bbs_count NUMBER(10,0) DEFAULT 0, -- 조회수
PRIMARY KEY ( bbs_no ),
FOREIGN KEY ( bbs_writer ) REFERENCES member (mem_id)
);

insert into bbs(bbs_no,bbs_title,bbs_content,bbs_writer)
values(seq_bbs_no.NEXTVAL,'테스트제목1','테스트내용1','a001');

SELECT * FROM bbs;

--시퀀스 생성(게시판 글번호를 위한 자동증가 정수값 생성)
CREATE SEQUENCE seq_bbs_no;

SELECT seq_bbs_no.NEXTVAL FROM DUAL;--시퀀스의 다음값 가져오기
SELECT seq_bbs_no.CURRVAL FROM DUAL;--시퀀스의 현재값 가져오기


insert into bbs(bbs_no,bbs_title,bbs_content,bbs_writer)
values(seq_bbs_no.NEXTVAL,'테스트제목2','테스트내용2','a002');

SELECT * FROM bbs;

--게시판 첨부파일 테이블
CREATE TABLE attach (
att_no NUMBER(10,0) PRIMARY KEY,--첨부파일번호
att_org_name VARCHAR2(255),--원래 파일명
att_new_name VARCHAR2(255),--서버에 저장한 파일명
att_bbs_no NUMBER(10,0), --첨부파일이 속한 게시글의 글번호
FOREIGN KEY (att_bbs_no) REFERENCES bbs (bbs_no)
);

SELECT * FROM attach;

CREATE SEQUENCE seq_att_no; -- 첨부파일 번호 생성을 위한 시퀀스

SELECT seq_att_no.NEXTVAL FROM DUAL;


SELECT 
bbs_no, bbs_title, bbs_content,bbs_writer, bbs_reg_date, bbs_count,
att_no,att_org_name,att_new_name,att_bbs_no
FROM bbs left outer join attach on bbs_no = att_bbs_no
WHERE bbs_no = 93;




