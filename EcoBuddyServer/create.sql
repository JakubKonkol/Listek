create table event (date datetime(6), id bigint not null auto_increment, description varchar(255), img varchar(255), location varchar(255), primary key (id)) engine=InnoDB;
create table task (priority tinyint, status tinyint, id bigint not null auto_increment, description varchar(255), primary key (id)) engine=InnoDB;
create table user (points float(53), id bigint not null auto_increment, nickname varchar(255), primary key (id)) engine=InnoDB;
create table user_task_history (task_history_id bigint not null, user_id bigint not null) engine=InnoDB;
alter table user_task_history add constraint UK_frur0nka4gg7tbbg23oo1w2v9 unique (task_history_id);
alter table user_task_history add constraint FKt9srh5xryipkkj7p2bl867kt6 foreign key (task_history_id) references task (id);
alter table user_task_history add constraint FKldvbuyquy1qayg2gu24xwcvc7 foreign key (user_id) references user (id);