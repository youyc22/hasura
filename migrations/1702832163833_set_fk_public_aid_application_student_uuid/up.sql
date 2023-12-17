alter table "public"."aid_application"
  add constraint "aid_application_student_uuid_fkey"
  foreign key ("student_uuid")
  references "public"."users"
  ("uuid") on update restrict on delete restrict;
