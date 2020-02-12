create table categories (
    category text not null
);

create unique index
    categories_category_idx on categories(category);

create table parts (
    name text not null,
    file text not null
);

create unique index
    parts_name_idx on parts(name);
create unique index
    parts_file_idx on parts(file);

create table parts_categories (
    category text not null references categories (category),
    part text not null references parts (file)
);

create unique index
    parts_categories_idx on parts_categories (category, part);
