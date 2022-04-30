ALTER TABLE ONLY "public"."contest" ALTER COLUMN "status" DROP DEFAULT;
ALTER TABLE "public"."contest" ALTER COLUMN "status" DROP NOT NULL;
