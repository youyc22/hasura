ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py4" TYPE text;
alter table "public"."contest_code" rename column "is_py4" to "code_type4";
