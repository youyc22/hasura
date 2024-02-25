alter table "public"."mentor_info" drop constraint "mentor_info_mentor_uuid_fkey",
  add constraint "mentor_info_mentor_uuid_fkey"
  foreign key ("mentor_uuid")
  references "public"."users"
  ("uuid") on update cascade on delete cascade;
