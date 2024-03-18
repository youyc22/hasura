alter table "public"."contest_room" drop constraint "contest_room_contest_id_fkey",
  add constraint "contest_room_contest_id_fkey"
  foreign key ("contest_id")
  references "public"."contest"
  ("id") on update cascade on delete cascade;
