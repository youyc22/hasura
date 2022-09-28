

DROP TABLE "public"."thuai_room_team";

DROP TABLE "public"."thuai_room";

DROP TABLE "public"."thuai_manager";

DROP TABLE "public"."thuai_code";

DROP TABLE "public"."team_member";

DROP TABLE "public"."thuai";

CREATE TABLE "public"."weekly"("id" int4 NOT NULL, "url" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("id"));

ALTER TABLE "public"."weekly" ADD COLUMN "title" text NOT NULL;

alter table "public"."weekly" add column "tags" json
 null;


CREATE TABLE "public"."honors" ("name" text NOT NULL, PRIMARY KEY ("name") , UNIQUE ("name"));

CREATE TABLE "public"."scholarships" ("code" text NOT NULL, "name" text NOT NULL, "amount" Integer NOT NULL, "type" text NOT NULL, "salutation" text, PRIMARY KEY ("code") , UNIQUE ("code"));

alter table "public"."scholarships" rename to "scholarships_aids";

alter table "public"."scholarships_aids" add column "IsAids" boolean
 not null default 'False';
