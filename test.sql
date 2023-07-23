drop database  if exists db1;
create database db1 charset utf8;
show databases;
use db1;
drop table if exists stu;
create table stu(
	id int primary key auto_increment,     -- 学生编号,设置id为主键，并且自增
	name varchar(50) unique,             -- 学生姓名(保证学生名字不可以重复)
	gender char(1),	                       -- 学生性别
	birthday date,		               -- 出生年月
	score double		               -- 考试成绩
        );
