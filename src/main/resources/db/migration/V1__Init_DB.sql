    create table model_stat (
        id bigint not null auto_increment,
        anons varchar(255),
        views integer not null,
        full_text varchar(2048),
        title varchar(255),
        primary key (id)
    );

    create table t_role (
        id bigint not null,
        name varchar(255),
        primary key (id)
    );

    create table t_user (
        id bigint not null auto_increment,
        password varchar(255),
        username varchar(255),
        primary key (id)
    );

    create table t_user_roles (
        user_id bigint not null,
        roles_id bigint not null,
        primary key (user_id, roles_id)
    );

    create table training_exercises (
        id bigint not null auto_increment,
        anons varchar(255),
        full_text varchar(2048),
        title varchar(255),
        images varchar(255),
        primary key (id)
    );

    create table user_training (
        id bigint not null auto_increment,
        id_exercises varchar(255),
        id_username bigint,
        primary key (id)
    );

    create table images (
            id bigint not null auto_increment,
            name varchar(255),
            primary key (id)
        );

    alter table t_user_roles
    add constraint user_role_user_fk
    foreign key (roles_id)
    references t_role (id);

    alter table t_user_roles
    add constraint message_user_fk
    foreign key (user_id)
    references t_user (id);
