alter table "public"."contest_notice" drop constraint "contest_notice_contest_id_fkey",
  add constraint "contest_info_contest_id_fkey"
  foreign key ("contest_id")
  references "public"."contest"
  ("id") on update cascade on delete cascade;
