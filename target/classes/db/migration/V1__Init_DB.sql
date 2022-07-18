create sequence hibernate_sequence start 1 increment 1;

create table message (
    id int8 not null,
    filename varchar(255),
    tag varchar(255),
    text varchar(2048) not null,
    user_id int8,
    primary key (id)
                     );

create table user_role (
    user_id int8 not null,
roles varchar(255)
                       );
create table usr (
    id int8 not null,
activation_code varchar(255),
 active boolean not null,
email varchar(255),
password varchar(255) not null,
username varchar(255) not null,
surname varchar(255),
name varchar(255),
patronymic varchar(255),
date_of_birth varchar(255),
sex varchar(255),
place_of_birth varchar(255),
citizenship varchar(255),
nationality varchar(255),
matrimonial_status varchar(255),
pass_series varchar(255),
pass_number varchar(255),
date_of_issue varchar(255),
date_of_expiry varchar(255),
issuing_authority varchar(255),
country varchar(255),
zip_code int8,
province varchar(255),
city varchar(255),
address varchar(255),
phone_number int8,
specialty varchar(255),
filename_passport varchar(255),
primary key (id)
                 );
alter table if exists message
    add constraint message_user_fk
    foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references usr;