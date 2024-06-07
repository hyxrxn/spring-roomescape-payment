create table if not exists member (
   id bigint generated by default as identity,
   email varchar(255),
   name varchar(255),
   password varchar(255),
   role varchar(255) check (role in ('ADMIN','USER')),
   primary key (id)
);

create table if not exists reservation (
    date date,
    id bigint generated by default as identity,
    member_id bigint,
    theme_id bigint,
    time_id bigint,
    status varchar(255) check (status in ('BOOKING')),
    primary key (id)
);

create table if not exists theme (
    id bigint generated by default as identity,
    description varchar(255),
    name varchar(255),
    thumbnail varchar(255),
    primary key (id)
);

create table if not exists time_slot (
    start_at time(6),
    id bigint generated by default as identity,
    primary key (id)
);

create table if not exists waiting (
    date date,
    id bigint generated by default as identity,
    member_id bigint,
    theme_id bigint,
    time_id bigint,
    status varchar(255) check (status in ('WAITING')),
    primary key (id)
);
