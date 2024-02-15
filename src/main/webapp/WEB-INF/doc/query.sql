create database jsp_model1 default character set utf8;

use jsp_model1;

create table user(
	userid varchar(50) primary key,
	password varchar(50) not null,
	name varchar(50) not null,
	role varchar(50) default 'User'
) default character set utf8;
desc user;


create table board(
	seq int primary key auto_increment,
	title varchar(200) not null,
	nickname varchar(50) not null,
	content text not null,
	regdate datetime default now(),
	viewcnt int default 0,
	userid varchar(50)
) default character set utf8;

-- viewcnt 컬럼명을 cnt로 변경하시오.
alter table board rename column viewcnt to cnt;

desc board ;

insert into user values
('dong', '2558', '동원', 'Admin');
select * from user where userid='dong' and password='2558' ;
select * from user;

insert into user values
('SANG', '1234', '상하이', 'user'),
('Nang', '5678', '낭낭이', 'user');

insert into board (seq,title,nickname,content,regdate,userid) values
(1, '한솥도시락 돈치고기', '동원', '내기준 한솥도시락 1위메뉴', subdate(curdate(),interval 7 day),'dong');
select * from board ;

update board set seq =4 where title = "버거킹";
