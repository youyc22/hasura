

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."scholarships_aids" add column "IsAids" boolean
--  not null default 'False';

alter table "public"."scholarships_aids" rename to "scholarships";

DROP TABLE "public"."scholarships";

DROP TABLE "public"."honors";

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."weekly" add column "tags" json
--  null;


ALTER TABLE "public"."weekly" DROP COLUMN "title";

DROP TABLE "public"."weekly";
