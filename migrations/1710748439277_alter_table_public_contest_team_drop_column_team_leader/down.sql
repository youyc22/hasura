comment on column "public"."contest_team"."team_leader" is E'比赛队伍';
alter table "public"."contest_team" alter column "team_leader" drop not null;
alter table "public"."contest_team" add column "team_leader" text;
