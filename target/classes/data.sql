create table Role(
	roleId int auto_increment primary key,
	role varchar(255)
);

create table User(
	userId int auto_increment primary key,
	username varchar(255),
	password varchar(255),
	roles int
);

create table UserRol(
	userId int,
	role int
);

create table CartProduct(
	cpId int auto_increment primary key,
	cart int,
	product int,
	quantity int
);

create table Cart(
	cartId int auto_increment primary key,
	totalAmount double,
	user int,
	cartProducts int
);

create table Product(
	productId int auto_increment primary key,
	productName varchar(255),
	price double,
	seller int,
	category int
);

create table Category(
	categoryId int auto_increment primary key,
	categoryName varchar(255)
);

alter table UserRol add foreign key (userId) references user(userId);
alter table UserRol add foreign key (role) references role(roleId);

alter table Cart add foreign key (user) references User(userId);
alter table Cart add foreign key (cartProducts) references CartProduct(cpId);
alter table Product add foreign key (seller) references User(userId); 
alter table Product add foreign key (category) references Category(categoryId);

insert into Category (categoryName) values ("Fashion")
insert into Category (categoryName) values ("Electonics")
insert into Category (categoryName) values ("Books")
insert into Category (categoryName) values ("Groceries")
insert into Category (categoryName) values ("Medicines")

insert into Role (role) values ("CONSUMER")
insert into Role (role) values ("SELLER")

insert into User (userName, password) values ("jack", "password");
insert into User (userName, password) values ("bob", "password");
insert into User (userName, password) values ("apple", "password");
insert into User (userName, password) values ("glaxo", "password");

insert into cart (totalAmount, userId) values (20, 1);
insert into cart (totalAmount, userId) values (0, 2);

insert into userRole (userId, role) values (1, 1);
insert into userRole (userId, role) values (2, 1);
insert into userRole (userId, role) values (3, 2);
insert into userRole (userId, role) values (4, 2);











