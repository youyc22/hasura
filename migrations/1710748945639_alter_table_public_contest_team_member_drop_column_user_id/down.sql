comment on column "public"."contest_team_member"."user_id" is E'队伍、成员映射表';
alter table "public"."contest_team_member" alter column "user_id" drop not null;
alter table "public"."contest_team_member" add column "user_id" text;
