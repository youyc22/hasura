alter table "public"."contest_code"
  add constraint "contest_code_team_id_fkey"
  foreign key ("team_id")
  references "public"."contest_team"
  ("team_id") on update cascade on delete cascade;
