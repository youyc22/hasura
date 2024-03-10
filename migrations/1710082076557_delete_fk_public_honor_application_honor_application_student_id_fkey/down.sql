alter table "public"."honor_application"
  add constraint "honor_application_student_id_fkey"
  foreign key ("student_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
