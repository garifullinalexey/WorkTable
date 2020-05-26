create table department
(
    id   int auto_increment
        primary key,
    name varchar(45) not null,
    constraint department_name_uindex
        unique (name)
);

create table mark
(
    id      int         not null
        primary key,
    code    varchar(45) not null,
    comment varchar(45) not null
);

create table staff
(
    id           int auto_increment
        primary key,
    name         varchar(45) not null,
    position     varchar(45) not null,
    table_number varchar(10) not null,
    id_dep       int         not null,
    constraint staff_dep__fk
        foreign key (id_dep) references department (id)
            on update cascade on delete cascade
);

create table prod_calendar
(
    id       int auto_increment
        primary key,
    date     date not null,
    id_mark  int  not null,
    id_staff int  not null,
    constraint prod_cal_mark__fk
        foreign key (id_mark) references mark (id)
            on update cascade on delete cascade,
    constraint prod_cal_staff__fk
        foreign key (id_staff) references staff (id)
            on update cascade on delete cascade
);

create index prod_cal_mark__fk_idx
    on prod_calendar (id_mark);

create index prod_cal_staff__fk_idx
    on prod_calendar (id_staff);

create index staff_dep__fk_idx
    on staff (id_dep);



INSERT INTO worktable.department (id, name) VALUES (1, 'Автоматизация антипригарных стульев');
INSERT INTO worktable.department (id, name) VALUES (2, 'Разработка цветочных фреймворков');
INSERT INTO worktable.department (id, name) VALUES (3, 'PR станков и горшков');
INSERT INTO worktable.mark (id, code, comment) VALUES (1, 'Я', 'Полный рабочий день');
INSERT INTO worktable.mark (id, code, comment) VALUES (2, 'Н', 'Отсутствие на рабочем месте');
INSERT INTO worktable.mark (id, code, comment) VALUES (3, 'В', 'Выходные и праздничные дни');
INSERT INTO worktable.mark (id, code, comment) VALUES (4, 'Рв', 'Работа в праздничные и выходные дни;');
INSERT INTO worktable.mark (id, code, comment) VALUES (5, 'Б', 'Дни временной нетрудоспособности.');
INSERT INTO worktable.mark (id, code, comment) VALUES (6, 'К', 'Командировочные дни.');
INSERT INTO worktable.mark (id, code, comment) VALUES (7, 'ОТ', 'Ежегодный основной оплачиваемый отпуск');
INSERT INTO worktable.mark (id, code, comment) VALUES (8, 'До', 'Неоплачиваемый отпуск');
INSERT INTO worktable.mark (id, code, comment) VALUES (9, 'Хд', 'Хозяйственный день');
INSERT INTO worktable.mark (id, code, comment) VALUES (10, 'У', 'Отпуск на период обучения');
INSERT INTO worktable.mark (id, code, comment) VALUES (11, 'Ож', 'Отпуск по уходу за ребенком');
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (1, '2020-02-20', 1, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (2, '2020-02-21', 2, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (3, '2020-02-20', 3, 2);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (4, '2020-02-21', 4, 2);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (5, '2020-02-20', 5, 3);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (6, '2020-02-21', 6, 3);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (7, '2020-02-20', 7, 4);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (8, '2020-02-21', 8, 4);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (9, '2020-02-20', 9, 5);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (10, '2020-02-21', 10, 5);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (11, '2020-02-20', 11, 6);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (12, '2020-02-21', 1, 6);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (13, '2020-02-22', 2, 6);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (14, '2020-02-23', 3, 6);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (15, '2020-02-01', 1, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (16, '2020-02-02', 1, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (17, '2020-02-03', 1, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (18, '2020-02-04', 1, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (19, '2020-02-05', 1, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (20, '2020-02-06', 2, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (21, '2020-02-07', 2, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (22, '2020-02-08', 3, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (23, '2020-02-09', 2, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (24, '2020-02-10', 3, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (25, '2020-02-11', 2, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (26, '2020-02-12', 3, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (27, '2020-02-13', 2, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (28, '2020-02-14', 3, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (29, '2020-02-15', 2, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (30, '2020-02-16', 3, 1);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (31, '2020-02-20', 1, 7);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (32, '2020-02-21', 2, 7);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (33, '2020-02-22', 3, 7);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (34, '2020-02-21', 4, 8);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (35, '2020-02-20', 5, 8);
INSERT INTO worktable.prod_calendar (id, date, id_mark, id_staff) VALUES (36, '2020-02-22', 6, 8);
INSERT INTO worktable.staff (id, name, position, table_number, id_dep) VALUES (1, 'Иванов Иван Иванович', 'Начальник отдела', '123', 1);
INSERT INTO worktable.staff (id, name, position, table_number, id_dep) VALUES (2, 'Петров Петр Петрович', 'Техник', '1234', 1);
INSERT INTO worktable.staff (id, name, position, table_number, id_dep) VALUES (3, 'Васильков Василий Васильевич', 'Стажер', '23443', 2);
INSERT INTO worktable.staff (id, name, position, table_number, id_dep) VALUES (4, 'Женьков Евгений Евгеньевич', 'Начальник отдела', '213', 2);
INSERT INTO worktable.staff (id, name, position, table_number, id_dep) VALUES (5, 'Мор Мария Мартышковна', 'Руководитель', '12341', 3);
INSERT INTO worktable.staff (id, name, position, table_number, id_dep) VALUES (6, 'Элис Алиса Александровна', 'Водоручитель', '12349', 3);
INSERT INTO worktable.staff (id, name, position, table_number, id_dep) VALUES (7, 'H hh h', 'Начальник отдела', '143223', 1);
INSERT INTO worktable.staff (id, name, position, table_number, id_dep) VALUES (8, 'asdfsf', 'Техник', '122334', 1);