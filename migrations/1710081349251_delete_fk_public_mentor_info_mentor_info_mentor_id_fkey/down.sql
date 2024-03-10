alter table "public"."mentor_info"
  add constraint "mentor_info_mentor_id_fkey"
  foreign key ("mentor_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
