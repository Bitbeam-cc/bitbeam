create table parts (
    name text not null,
    category text not null,
    file text not null
);

create unique index
    parts_name_idx on parts(name);
create unique index
    parts_file_idx on parts(file);

