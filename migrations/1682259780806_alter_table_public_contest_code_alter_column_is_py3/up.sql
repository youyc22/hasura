ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py3" TYPE text;
alter table "public"."contest_code" rename column "is_py3" to "code_type3";
