alter table "public"."contest_room"
  add constraint "contest_room_round_id_fkey"
  foreign key ("round_id")
  references "public"."contest_round"
  ("round_id") on update restrict on delete cascade;
