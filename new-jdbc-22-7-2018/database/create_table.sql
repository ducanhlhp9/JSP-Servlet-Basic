use jsp_servlet_project_training;
create table role(
	id bigint not null primary key auto_increment,
    name varchar(255) not null,
    code varchar(255) not null,
    createdDate timeStamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255) null
);
create table users(
	id bigint not null primary key auto_increment,
    username varchar(150) not null,
    password varchar(150) not null,
    fullname varchar(150) null,
    status int not null,
    roleid bigint not null,
    createdDate timeStamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255) null
);
alter table users add constraint fk_user_role foreign key (roleid) references role(id);
create table news(
	id bigint not null primary key auto_increment,
    title varchar(255) null,
    thumbnail varchar(150) null,
    description_seo text null,
    content text null,
    category_id bigint not null,
    createdDate timeStamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255) null
);
create table categories (
	id bigint not null primary key auto_increment,
    name varchar(255) not null,
    code varchar(255) not null,
    createdDate timeStamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255) null
);
alter table news add constraint fk_news_cat foreign key (category_id) references categories(id);
create table comment (
	id bigint not null primary key auto_increment,
    content text not null,
    user_id bigint not null,
    news_id bigint not null,
    createdDate timeStamp null,
    modifiedDate timestamp null,
    createdBy varchar(255) null,
    modifiedBy varchar(255) null
);
alter table comment add constraint fk_comment_user foreign key (user_id) references users(id);
alter table comment add constraint fk_comment_news foreign key (news_id) references news(id);
