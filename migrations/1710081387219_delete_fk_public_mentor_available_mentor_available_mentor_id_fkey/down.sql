alter table "public"."mentor_available"
  add constraint "mentor_available_mentor_id_fkey"
  foreign key ("mentor_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
