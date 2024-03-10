alter table "public"."postgraduate_mentor_info"
  add constraint "postgraduate_mentor_info_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
