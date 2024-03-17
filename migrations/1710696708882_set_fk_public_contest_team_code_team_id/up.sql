alter table "public"."contest_team_code"
  add constraint "contest_team_code_team_id_fkey"
  foreign key ("team_id")
  references "public"."contest_team"
  ("team_id") on update restrict on delete cascade;
