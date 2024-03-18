alter table "public"."contest_team" drop constraint "contest_team_contest_id_fkey",
  add constraint "contest_team_contest_id_fkey"
  foreign key ("contest_id")
  references "public"."contest"
  ("id") on update cascade on delete cascade;
