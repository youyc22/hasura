alter table "public"."contest_team_member"
  add constraint "contest_team_member_user_uuid_fkey"
  foreign key ("user_uuid")
  references "public"."users"
  ("uuid") on update restrict on delete restrict;
