ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py6" TYPE text;
alter table "public"."contest_code" rename column "is_py6" to "code_type6";
