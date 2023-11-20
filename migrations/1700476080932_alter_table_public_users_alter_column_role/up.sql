alter table "public"."users" alter column "role" set default 'user';
comment on column "public"."users"."role" is NULL;
