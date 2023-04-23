alter table "public"."contest_code" rename column "code_type3" to "is_py3";
ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py3" TYPE boolean;
