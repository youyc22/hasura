alter table "public"."mentor_info"
  add constraint "mentor_info_mentor_uuid_fkey"
  foreign key ("mentor_uuid")
  references "public"."users"
  ("uuid") on update restrict on delete restrict;
