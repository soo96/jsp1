create table customer(
	idx int auto_increment primary key,
	name varchar(20) not null,				-- 20�� ����Ʈ�� �ƴ϶� ���ڼ���(����,�ѱ�,���� �������)
	password varchar(10) not null,
	email varchar(30) not null,
	addr varchar(30),
	gender varchar(10) not null,
	age tinyint,
	hobby varchar(30)
);
insert into customer (name,password,email,gender)
	values('ȫ�浿','11111111','hong@naver.com','femaie');

select * from customer;





