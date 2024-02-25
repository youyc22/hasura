alter table "public"."contest_manager" drop constraint "contest_manager_user_uuid_fkey",
  add constraint "contest_manager_user_uuid_fkey"
  foreign key ("user_uuid")
  references "public"."users"
  ("uuid") on update restrict on delete restrict;
