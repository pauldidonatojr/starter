-- Enter migration here

create type status as enum (
'TO_DO',
'IN_PROGRESS',
'DONE'
);


create table app_public.tasks (
id serial,
title text,
description text,
status status,
created_at timestamptz not null default now(),
updated_at timestamptz not null default now()
);
