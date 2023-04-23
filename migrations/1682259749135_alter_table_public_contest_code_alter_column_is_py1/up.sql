ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py1" TYPE text;
alter table "public"."contest_code" rename column "is_py1" to "code_type1";
