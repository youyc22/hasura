alter table "public"."mentor_available"
  add constraint "mentor_available_mentor_uuid_fkey"
  foreign key ("mentor_uuid")
  references "public"."users"
  ("uuid") on update restrict on delete restrict;
