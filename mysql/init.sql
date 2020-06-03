create database note;
use note;

create table menu
(
    id  int auto_increment
    primary key,
    parent_id int          null,
    user_id   int          null,
    name      varchar(255) null,
    constraint menu_menu_id_fk
    foreign key (parent_id) references menu (id)
    on update cascade on delete cascade
);

create table note
(
    id          int auto_increment
    primary key,
    menu_id     int          null,
    name        varchar(255) null,
    content     text         null,
    create_date date         null,
    constraint note_menu_id_fk
    foreign key (menu_id) references menu (id)
    on update cascade on delete cascade
);

create table user
(
    id  int auto_increment
    primary key,
    username varchar(255) null,
    password varchar(255) null
);

create table note.login_warning
(
    user_id    bigint   not null,
    count      bigint   null,
    begin_time datetime null,
    end_time   datetime null,
    constraint login_warning_user_id_uindex
        unique (user_id)
);

alter table note.login_warning
    add primary key (user_id);


create table note_statistics
(
    id         int auto_increment
        primary key,
    user_id    bigint                   not null,
    count      bigint                   null,
    behavior   varchar(20) charset utf8 null,
    begin_time datetime                 null,
    end_time   datetime                 null
);




insert into user(id, username, password) values(1, 'cookie', '$2a$10$KHqeA82x2nQM5Nnz4rQeJe5Yf36BQ2nxH92gvQfCl.gyw0B8uCGne');
insert into user(id, username, password) values(2, 'admin', '$2a$10$KHqeA82x2nQM5Nnz4rQeJe5Yf36BQ2nxH92gvQfCl.gyw0B8uCGne');

insert into menu(id, parent_id, user_id, name) values(1, NULL, NULL, NULL);
