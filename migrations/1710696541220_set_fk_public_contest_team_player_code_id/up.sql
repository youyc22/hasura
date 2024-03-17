alter table "public"."contest_team_player"
  add constraint "contest_team_player_code_id_fkey"
  foreign key ("code_id")
  references "public"."contest_team_code"
  ("code_id") on update restrict on delete set null;
