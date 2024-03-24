alter table "public"."contest_room"
  add constraint "contest_room_map_id_fkey"
  foreign key ("map_id")
  references "public"."contest_map"
  ("map_id") on update restrict on delete cascade;
