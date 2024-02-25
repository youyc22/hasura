alter table "public"."honor_application" drop constraint "honor_application_student_uuid_fkey",
  add constraint "honor_application_student_uuid_fkey"
  foreign key ("student_uuid")
  references "public"."users"
  ("uuid") on update restrict on delete restrict;
