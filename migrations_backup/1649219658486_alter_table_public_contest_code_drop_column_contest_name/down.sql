ALTER TABLE "public"."contest_code" ADD COLUMN "contest_name" text;
ALTER TABLE "public"."contest_code" ALTER COLUMN "contest_name" DROP NOT NULL;
