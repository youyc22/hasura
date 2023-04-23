alter table "public"."contest_code" rename column "code_type6" to "is_py6";
ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py6" TYPE boolean;
