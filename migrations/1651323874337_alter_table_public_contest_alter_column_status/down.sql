ALTER TABLE ONLY "public"."contest" ALTER COLUMN "status" SET DEFAULT ''000'::text';
ALTER TABLE "public"."contest" ALTER COLUMN "status" SET NOT NULL;
