alter table "public"."mentor_application"
  add constraint "mentor_application_student_id_fkey1"
  foreign key ("student_id")
  references "public"."user"
  ("_id") on update cascade on delete cascade;
