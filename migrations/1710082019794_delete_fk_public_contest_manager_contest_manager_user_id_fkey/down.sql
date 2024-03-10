alter table "public"."contest_manager"
  add constraint "contest_manager_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
