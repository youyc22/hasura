alter table "public"."mentor_message" drop constraint "mentor_message_from_uuid_fkey",
  add constraint "mentor_message_from_uuid_fkey"
  foreign key ("from_uuid")
  references "public"."users"
  ("uuid") on update restrict on delete restrict;
