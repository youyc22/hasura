alter table "public"."contest_manager" drop constraint "contest_manager_contest_id_fkey",
  add constraint "contest_manager_contest_id_fkey"
  foreign key ("contest_id")
  references "public"."contest"
  ("id") on update restrict on delete cascade;
