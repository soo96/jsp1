create table customer(
	idx int auto_increment primary key,
	name varchar(20) not null,				-- 20은 바이트가 아니라 글자수다(영어,한글,숫자 상관없이)
	password varchar(10) not null,
	email varchar(30) not null,
	addr varchar(30),
	gender varchar(10) not null,
	age tinyint,
	hobby varchar(30)
);
insert into customer (name,password,email,gender)
	values('홍길동','11111111','hong@naver.com','femaie');

select * from customer;





