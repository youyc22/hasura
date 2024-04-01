alter table "public"."contest_team" alter column "invited_code" set not null;
alter table "public"."contest_team" add constraint "contest_team_invited_code_key" unique ("invited_code");
