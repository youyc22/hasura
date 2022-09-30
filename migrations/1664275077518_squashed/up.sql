
CREATE TABLE "public"."honors" ("name" text NOT NULL, PRIMARY KEY ("name") , UNIQUE ("name"));

CREATE TABLE "public"."scholarships" ("code" text NOT NULL, "name" text NOT NULL, "amount" Integer NOT NULL, "type" text NOT NULL, "salutation" text, PRIMARY KEY ("code") , UNIQUE ("code"));

alter table "public"."scholarships" rename to "scholarships_aids";

alter table "public"."scholarships_aids" add column "IsAids" boolean
 not null default 'False';
