alter table "public"."mentor_message"
  add constraint "mentor_message_to_id_fkey"
  foreign key ("to_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
