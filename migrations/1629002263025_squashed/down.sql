
COMMENT ON TABLE "public"."team_member" IS NULL;

DROP TABLE "public"."team_user";

ALTER TABLE "public"."team" DROP COLUMN "summary";

ALTER TABLE "public"."team" DROP COLUMN "score";
