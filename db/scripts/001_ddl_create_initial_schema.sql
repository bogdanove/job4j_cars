create table if not exists auto_user(
    id serial primary key,
    login varchar not null,
    password varchar not null
);

create table if not exists auto_post(
    id serial primary key,
    description varchar not null,
    created timestamp,
    auto_user_id int references auto_user (id)
);