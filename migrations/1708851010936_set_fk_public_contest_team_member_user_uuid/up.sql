alter table "public"."contest_team_member" drop constraint "contest_team_member_user_uuid_fkey",
  add constraint "contest_team_member_user_uuid_fkey"
  foreign key ("user_uuid")
  references "public"."users"
  ("uuid") on update cascade on delete cascade;
