
alter table "public"."contest_info" drop constraint "contest_info_contest_id_fkey";

ALTER TABLE "public"."contest_info" DROP COLUMN "contest_id";

ALTER TABLE "public"."contest_info" ADD COLUMN "contest_type" text;
ALTER TABLE "public"."contest_info" ALTER COLUMN "contest_type" DROP NOT NULL;

ALTER TABLE "public"."contest_team" DROP COLUMN "contest_id";

ALTER TABLE "public"."contest_team" ADD COLUMN "contest_name" text;
ALTER TABLE "public"."contest_team" ALTER COLUMN "contest_name" DROP NOT NULL;

ALTER TABLE "public"."contest" ALTER COLUMN "contest_name" DROP NOT NULL;

ALTER TABLE "public"."contest" DROP COLUMN "contest_name";

ALTER TABLE "public"."contest" ADD COLUMN "contest_name" text;
ALTER TABLE "public"."contest" ALTER COLUMN "contest_name" DROP NOT NULL;

DROP TABLE "public"."contest";
