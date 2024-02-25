alter table "public"."scholarship_application" drop constraint "scholarship_application_student_uuid_fkey",
  add constraint "scholarship_application_student_uuid_fkey"
  foreign key ("student_uuid")
  references "public"."users"
  ("uuid") on update cascade on delete cascade;
