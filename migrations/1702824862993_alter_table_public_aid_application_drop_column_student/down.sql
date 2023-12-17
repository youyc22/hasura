alter table "public"."aid_application" alter column "student" drop not null;
alter table "public"."aid_application" add column "student" uuid;
