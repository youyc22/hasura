alter table "public"."contest_team_member"
  add constraint "contest_team_member_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
