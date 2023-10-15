alter table "public"."contest_code" rename column "code_type5" to "is_py5";
ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py5" TYPE boolean;
