CREATE DATABASE KITABXANA

USE KITABXANA


CREATE TABLE BOOKS(Id int primary key identity,
	Name nvarchar(255) Not Null Check(Len(Name) >= 2) Unique,
	PageCount int Not Null Check(PageCount > 10))


	CREATE TABLE Authors(Id int primary key identity,
	Name nvarchar(50) Not Null  Unique,
	Surname nvarchar(50) Not Null)

	ALTER TABLE BOOKS
	Add AuthorId int Not Null ForeiGn Key References Authors(Id)

	INSERT INTO BOOKS (Name, PageCount, AuthorId) Values