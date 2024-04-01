alter table "public"."contest_team" drop constraint "contest_team_invited_code_key";
alter table "public"."contest_team" alter column "invited_code" drop not null;
