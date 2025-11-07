use sqldb;
create table usertbl -- 회원 테이블
( userid char(8) not null primary key, -- 사용자 아이디(pk)
name varchar(10) not null, -- 이름
birthyear int not null, -- 출생년도 
addr char(2) not null, -- 지역경기, 서울, 경남 식으로 2글자만 입력)
mobile1 char(3), -- 휴대폰의 국번 011, 016, 107, 018, 019, 010 등)
mobile2 char(8), -- 휴대폰의 나머지 전화번호(하이픈 제외)
height smallint, -- 키
mdate date -- 회원 가입일
);


-- 기존 테이블 삭제
drop table if exists usertbl;

-- 새 테이블 생성
create table usertbl -- 회원 테이블 
(
    userid char(8) not null primary key, -- 사용자 아이디(pk)
    name varchar(10) not null, -- 이름
    birthyear int not null, -- 출생년도
    addr char(2) not null, -- 지역(경기, 서울, 경남 식으로 2글자만 입력)
    mobile1 char(3), -- 휴대폰의 국번 011, 016, 017, 018, 019, 010 등)
    mobile2 char(8), -- 휴대폰의 나머지 전화번호(하이픈 제외)
    height smallint, -- 키
    mdate date -- 회원 가입일
);
create table buytbl -- 회원 구매 테이블(buy table의 약자)
( num int auto_increment not null primary key, -- 순번(pk)
userid char(8) not null, -- 아이디(fk)
prodname char(6) not null, -- 물품명
groupname char(4)  , -- 분류 
price int not null, -- 단가
amount smallint not null, -- 수량 
foreign key (userid) references usertbl(userid)
);
insert INTO usertbl VALUEs('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
INSERT INTO usertbl VALUEs('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
INSERT INTO usertbl VALUEs('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');
INSERT INTO usertbl VALUES('JYP', '조용필', 1950, '경기', '011', '4444444', 166, '2009-4-4');
INSERT INTO usertbl VALUES('SSK', '성시경', 1979, '서울', null, null, 186, '2013-12-12');
INSERT INTO usertbl VALUES('LJB', '임재범', 1963, '서울', '016', '6666666', 182, '2009-9-9');
INSERT INTO usertbl VALUES('YJS', '윤종신', 1969, '경남', null, null, 170, '2005-5-5');
insert INTO usertbl VALUES('EJW', '은지원', 1972, '경북', '011', '8888888', 174, '2014-3-3');
INSERT INTO usertbl VALUES('JKW', '조관우', 1965, '경기', '018', '9999999', 172, '2010-10-10');
INSERT INTO usertbl VALUES('BBK', '바비킴', 1973, '서울', '010', '0000000', 176, '2013-5-5');
INSERT INTO buytbl VALUES(null, 'KBS', '운동화', null, 30, 2);
INSERT INTO buytbl VALUES(null, 'KBS', '노트북', '전자', 1000, 1);
INSERT INTO buytbl VALUES(null, 'JYP', '모니터', '전자', 200, 1);
INSERT INTO buytbl VALUES(null, 'BBK', '모니터', '전자', 200, 5);
INSERT INTO buytbl VALUES(null, 'KBS', '청바지', '의류', 50, 3);
INSERT INTO buytbl VALUES(null, 'BBK', '메모리', '전자', 80, 10);
INSERT INTO buytbl VALUES(null, 'SSK', '책', '서적', 15, 5);
INSERT INTO buytbl VALUES(null, 'EJW', '책', '서적', 15, 2);
INSERT INTO buytbl VALUES(null, 'EJW', '청바지', '의류', 50, 1);
INSERT INTO buytbl VALUES(null, 'BBK', '운동화', null, 30, 2);
INSERT INTO buytbl VALUES(null, 'EJW', '책', '서적', 15, 1);
INSERT INTO buytbl VALUES(null, 'BBK', '운동화', null, 30, 2);
SELECT*FROM usertbl;
SELECT*FROM buytbl;