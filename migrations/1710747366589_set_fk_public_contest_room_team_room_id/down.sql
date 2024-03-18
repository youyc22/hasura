alter table "public"."contest_room_team" drop constraint "contest_room_team_room_id_fkey",
  add constraint "contest_room_team_room_id_fkey"
  foreign key ("room_id")
  references "public"."contest_room"
  ("room_id") on update cascade on delete cascade;
