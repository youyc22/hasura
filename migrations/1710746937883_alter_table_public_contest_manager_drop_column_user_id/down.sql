comment on column "public"."contest_manager"."user_id" is E'比赛管理员映射表';
alter table "public"."contest_manager" alter column "user_id" drop not null;
alter table "public"."contest_manager" add column "user_id" text;
