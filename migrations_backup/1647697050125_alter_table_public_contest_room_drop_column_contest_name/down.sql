ALTER TABLE "public"."contest_room" ADD COLUMN "contest_name" text;
ALTER TABLE "public"."contest_room" ALTER COLUMN "contest_name" DROP NOT NULL;
