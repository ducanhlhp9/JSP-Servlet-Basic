use jsp_servlet_project_training;

insert into categories(code, name) value('the-thao', 'Thể thao');
insert into categories(code, name) value('the-gioi', 'Thế giới');
insert into categories(code, name) value('chinh-tri', 'Chính trị');
insert into categories(code, name) value('thoi-su', 'Thời sự');
insert into categories(code, name) value('goc-nhin', 'Góc nhìn');

insert into news(title, categoryid) values("bài viết 1", 1);
insert into news(title, categoryid) values("bài viết 2", 1);
insert into news(title, categoryid) values("bài viết 3", 2);

insert into role(code, name) values('admin','Quản trị');
insert into role(code, name) values('user','Người dùng');

insert into users(username, password, fullname, status, roleid) values('admin', '123456', 'admin', 1, 1);
insert into users(username, password, fullname, status, roleid) values('nguyenvana', '123456', 'Nguyễn văn A', 1, 2);
insert into users(username, password, fullname, status, roleid) values('nguyenvanb', '123456', 'Nguyễn văn B', 1, 2);