alter table "public"."contest_team"
  add constraint "contest_team_team_leader_fkey"
  foreign key ("team_leader")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
