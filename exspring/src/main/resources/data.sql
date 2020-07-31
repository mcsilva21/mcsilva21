
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

--포인트 내림차순으로 정렬하여 2번쨰 부터 4전째까지만 조회
SELECT mem_id, mem_pass, mem_name, mem_point,rnum
from(SELECT mem_id, mem_pass, mem_name, mem_point,rownum rnum
	from (SELECT mem_id, mem_pass, mem_name, mem_point
	FROM member
		order by mem_name desc)
)
where 2 <= rnum and rnum <=4;
--
SELECT mem_id, mem_pass, mem_name, mem_point,rnum
from(SELECT mem_id, mem_pass, mem_name, mem_point,rownum rnum
	from (SELECT mem_id, mem_pass, mem_name, mem_point
		FROM member
		order by mem_name desc)
		where rownum<=4) 
where 2 <= rnum;

select * from member order by mem_name desc;


insert into member (mem_id, mem_pass, mem_name, mem_point) values ('dgarbutt0', 'HkQybE', 'Dayna Garbutt', 167);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('mduffitt1', 'bWmLlRwlC', 'Man Duffitt', 487);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('kjoder2', '6Dz7zVi0', 'Kirby Joder', 263);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('djacklings3', 'JuwS7oS1', 'Devan Jacklings', 422);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('skleehuhler4', 'qQr0g2s9krdv', 'Selia Kleehuhler', 389);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('wchaunce5', 'GHn1qJ7eCg', 'Wendel Chaunce', 113);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('vdickson6', '6IJVNZ1', 'Valerie Dickson', 488);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('esuttaby7', 'i67daimH', 'Eadie Suttaby', 301);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('jinglish8', 'PHl0Q3Z', 'Jon Inglish', 328);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('idemicoli9', '7XsZxTOH', 'Idalina Demicoli', 106);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('sshillama', '35JyYZO', 'Stanly Shillam', 162);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('akeirb', '2Um3orbHbUdh', 'Ariadne Keir', 195);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('mdobbingsc', 'b8tLPJ8', 'Melisandra Dobbings', 105);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('ldignamd', 'SlDBNOg', 'Ludvig Dignam', 144);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('mtironee', 'ngpunYu5LaA', 'Mort Tirone', 455);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('mpresnallf', 'wEA76oNyV9pA', 'Mona Presnall', 159);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('rowersg', 'mDCpkAPpxoy', 'Rozalie Owers', 414);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('khickinh', 'pZeDSqw', 'Kizzee Hickin', 120);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('obrucki', 'wX9YnJ8ni6', 'Osbourne Bruck', 190);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('elemmersj', 'lKLkMjOI7', 'Euphemia Lemmers', 244);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('ekegginsk', '7csUY0errj9', 'Esmaria Keggins', 470);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('jwhybrayl', 'xYvGgQWK4GJ', 'Jyoti Whybray', 362);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('zjedraszekm', '1sVg6jsENo', 'Zachary Jedraszek', 402);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('llehrn', 'A2Hn74ujDz7', 'Lydia Lehr', 440);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('mstrasso', 'QE6hBJLdlV', 'Melisande Strass', 384);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('ccorbenp', 'IvE7V0SPK', 'Cart Corben', 391);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('trebbeckq', 'Dk5K5JH7LYwP', 'Tyrus Rebbeck', 190);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('aschirokr', '7DWtJl', 'Andris Schirok', 459);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('dwanstalls', 'RuqMkcc5b', 'Darren Wanstall', 238);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('sdelvet', 'RZsW7sOrzLX', 'Silvia Delve', 192);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('mdibbertu', 'nuRY5kh4i', 'Maxim Dibbert', 491);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('rfakesv', 'maWKoC8uw7vS', 'Rollie Fakes', 491);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('jminshullw', 'dFHPlKj', 'Junia Minshull', 201);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('ctossellx', 'tgiZ5WupCgo9', 'Christiane Tossell', 407);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('cgolsony', 'xSrP96S', 'Corrie Golson', 192);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('gsearz', 'lHejvro', 'Gregor Sear', 365);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('zmcomish10', '42w03WgI9', 'Zacharias McOmish', 374);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('lmanske11', '7KIpuORH4g24', 'Lorrayne Manske', 258);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('vchesterman12', 'ibrWT4UG8Y0', 'Vern Chesterman', 344);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('ddi13', '9yhrhWCYEbw', 'Dominique Di Pietro', 315);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('smeriguet14', 'fBv7mY', 'Sindee Meriguet', 189);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('kstretton15', 'a71GqkjmdRnh', 'Keefe Stretton', 121);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('llatour16', 'CF5dlm', 'Leighton Latour', 424);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('zbidgood17', 'SEHmrA09VTnP', 'Zared Bidgood', 213);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('kmerrett18', '1sTcqxOBqTc', 'Karlotte Merrett', 373);
insert into member (mem_id, mem_pass, mem_name, mem_point) values ('itomovic19', 'uOPToC', 'Isabella Tomovic', 377);

--게시판 댓글 테이블
CREATE TABLE reply(
rep_no NUMBER(10,0) PRIMARY KEY, --댓글번호
rep_content CLOB, --댓글내용
rep_writer VARCHAR(50),--댓글작성자아이디
rep_data DATE DEFAULT SYSDATE, --댓글작성일
rep_bbs_no NUMBER(10,0), --댓글이속한 게시글 번호
FOREIGN KEY (rep_writer) REFERENCES member (mem_Id),
FOREIGN KEY (rep_bbs_no) REFERENCES bbs (bbs_no)
);

select * from reply;

CREATE SEQUENCE seq_rep_no;
SELECT seq_rep_no.NEXTVAL FROM DUAL;