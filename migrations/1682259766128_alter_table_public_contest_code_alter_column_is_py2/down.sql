alter table "public"."contest_code" rename column "code_type2" to "is_py2";
ALTER TABLE "public"."contest_code" ALTER COLUMN "is_py2" TYPE boolean;
