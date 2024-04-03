alter table "public"."contest_round"
  add constraint "contest_round_map_id_fkey"
  foreign key ("map_id")
  references "public"."contest_map"
  ("map_id") on update restrict on delete set null;
