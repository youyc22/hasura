
DROP TABLE "public"."thuai_room_team";

DROP TABLE "public"."thuai_room";

DROP TABLE "public"."thuai_manager";

DROP TABLE "public"."thuai_code";

DROP TABLE "public"."team_member";

DROP TABLE "public"."thuai";

CREATE TABLE "public"."weekly"("id" int4 NOT NULL, "url" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("id"));

ALTER TABLE "public"."weekly" ADD COLUMN "title" text NOT NULL;
