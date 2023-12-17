alter table "public"."aid_application" alter column "student_uuid" drop not null;
alter table "public"."aid_application" add column "student_uuid" uuid;
