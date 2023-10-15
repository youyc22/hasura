ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py2" TYPE text;
alter table "public"."contest_code" rename column "is_py2" to "code_type2";
