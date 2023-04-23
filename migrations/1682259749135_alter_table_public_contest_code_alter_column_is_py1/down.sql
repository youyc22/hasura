alter table "public"."contest_code" rename column "code_type1" to "is_py1";
ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py1" TYPE boolean;
