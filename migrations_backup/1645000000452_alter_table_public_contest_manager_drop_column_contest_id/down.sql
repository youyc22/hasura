ALTER TABLE "public"."contest_manager" ADD COLUMN "contest_id" text;
ALTER TABLE "public"."contest_manager" ALTER COLUMN "contest_id" DROP NOT NULL;
