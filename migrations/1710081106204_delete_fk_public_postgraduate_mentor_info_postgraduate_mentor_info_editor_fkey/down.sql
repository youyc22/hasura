alter table "public"."postgraduate_mentor_info"
  add constraint "postgraduate_mentor_info_editor_fkey"
  foreign key ("editor")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
