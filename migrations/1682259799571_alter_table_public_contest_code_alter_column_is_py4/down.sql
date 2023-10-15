alter table "public"."contest_code" rename column "code_type4" to "is_py4";
ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py4" TYPE boolean;
