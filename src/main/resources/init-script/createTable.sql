DROP TABLE IF EXISTS `users`;
create table `users`(
	id int auto_increment not null,
	userName varchar(255) not null,
	aliasesName varchar(54),
	password varchar(255) not null,
	userType char(1) default 1,
	userState char(1) default 0,
	createTime timestamp not null,
	primary key(id)
);

--drop table if exists users;
--create table users (
--    username varchar(255) primary key,
--    password varchar(255) not null
--);

drop table if exists roles;
create table roles (
    role_name varchar(255) primary key
);

drop table if exists user_roles;
create table user_roles (
    username varchar(255) not null,
    role_name varchar(255) not null,
    constraint user_roles_uq unique ( username, role_name )
);

drop table if exists roles_permissions;
create table roles_permissions (
    role_name varchar(255) not null,
    permission varchar(255) not null,
    primary key (role_name, permission)
);

INSERT INTO users(id, userName, aliasesName, password, userType, userState, createTime) VALUES(1, 'user1', NULL, '+XdzYjFKiLoNffcB7Wvr0KNXe+M77+crq8QMOd5lqx8=', '1', '0', '2014-07-12 21:09:47.0');
INSERT INTO users(id, userName, aliasesName, password, userType, userState, createTime) VALUES(2, 'user2', NULL, 'KmOs0a5jkpeDq5F5tNEjVish+AkcBdLvTw+thmq1x8k=', '1', '0', '2014-07-12 21:09:47.0');

INSERT INTO roles(role_name) VALUES('role1');
INSERT INTO roles(role_name) VALUES('role2');

INSERT INTO user_roles(username, role_name) VALUES('user1', 'role1');
INSERT INTO user_roles(username, role_name) VALUES('user1', 'role2');
INSERT INTO user_roles(username, role_name) VALUES('user2', 'role2');


INSERT INTO roles_permissions(role_name, permission) VALUES('role1', 'permission1');
INSERT INTO roles_permissions(role_name, permission) VALUES('role1', 'permission2');
INSERT INTO roles_permissions(role_name, permission) VALUES('role2', 'permission1');


