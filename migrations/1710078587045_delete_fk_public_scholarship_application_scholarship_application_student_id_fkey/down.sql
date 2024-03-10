alter table "public"."scholarship_application"
  add constraint "scholarship_application_student_id_fkey"
  foreign key ("student_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
