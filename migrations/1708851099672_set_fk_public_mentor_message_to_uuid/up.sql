alter table "public"."mentor_message" drop constraint "mentor_message_to_uuid_fkey",
  add constraint "mentor_message_to_uuid_fkey"
  foreign key ("to_uuid")
  references "public"."users"
  ("uuid") on update cascade on delete cascade;
