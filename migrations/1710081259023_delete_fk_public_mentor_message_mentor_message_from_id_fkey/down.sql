alter table "public"."mentor_message"
  add constraint "mentor_message_from_id_fkey"
  foreign key ("from_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
