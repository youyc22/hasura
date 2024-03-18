alter table "public"."contest_code"
  add constraint "contest_code_contest_id_fkey"
  foreign key ("contest_id")
  references "public"."contest"
  ("id") on update cascade on delete cascade;
