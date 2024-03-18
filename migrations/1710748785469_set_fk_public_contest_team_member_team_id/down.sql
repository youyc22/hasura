alter table "public"."contest_team_member" drop constraint "contest_team_member_team_id_fkey",
  add constraint "contest_team_member_team_id_fkey"
  foreign key ("team_id")
  references "public"."contest_team"
  ("team_id") on update cascade on delete cascade;
