ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py5" TYPE text;
alter table "public"."contest_code" rename column "is_py5" to "code_type5";
