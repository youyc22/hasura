
CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."contest"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "contest_name" text NOT NULL, "start_date" timestamptz NOT NULL, "end_date" timestamptz NOT NULL, "description" text, PRIMARY KEY ("id") , UNIQUE ("id"));

ALTER TABLE "public"."contest" DROP COLUMN "contest_name" CASCADE;

ALTER TABLE "public"."contest" ADD COLUMN "contest_name" text NULL;

ALTER TABLE "public"."contest" ALTER COLUMN "contest_name" SET NOT NULL;

ALTER TABLE "public"."contest_team" DROP COLUMN "contest_name" CASCADE;

ALTER TABLE "public"."contest_team" ADD COLUMN "contest_id" uuid NOT NULL;

ALTER TABLE "public"."contest_info" DROP COLUMN "contest_type" CASCADE;

ALTER TABLE "public"."contest_info" ADD COLUMN "contest_id" uuid NOT NULL;

alter table "public"."contest_info"
           add constraint "contest_info_contest_id_fkey"
           foreign key ("contest_id")
           references "public"."contest"
           ("id") on update restrict on delete restrict;
