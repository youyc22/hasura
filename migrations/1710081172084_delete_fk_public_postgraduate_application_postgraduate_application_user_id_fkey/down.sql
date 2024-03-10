alter table "public"."postgraduate_application"
  add constraint "postgraduate_application_user_id_fkey"
  foreign key ("user_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
