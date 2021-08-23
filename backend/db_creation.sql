create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
create table order_elements (id bigint not null auto_increment, quantity integer, product_id bigint, primary key (id)) engine=InnoDB
create table orders (id bigint not null auto_increment, date date, user_id bigint, primary key (id)) engine=InnoDB
create table orders_elements (order_id bigint not null, order_element_id bigint not null, primary key (order_id, order_element_id)) engine=InnoDB
create table products (id bigint not null auto_increment, description varchar(255), image_url varchar(255), name varchar(255), price double precision, product_type varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, firstname varchar(255), lastname varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=InnoDB
alter table order_elements add constraint FKq5a6cxbrsif15l8anfjrjh318 foreign key (product_id) references products (id)
alter table orders add constraint FK32ql8ubntj5uh44ph9659tiih foreign key (user_id) references users (id)
alter table orders_elements add constraint FK2pjh5hcfftpoj49o28swodrdq foreign key (order_element_id) references order_elements (id)
alter table orders_elements add constraint FK1crjn2bvmartikgkf2e59c9se foreign key (order_id) references orders (id)
