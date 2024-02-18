BEGIN TRANSACTION;
ALTER TABLE "public"."honor_time" DROP CONSTRAINT "honor_time_pkey";

ALTER TABLE "public"."honor_time"
    ADD CONSTRAINT "honor_time_pkey" PRIMARY KEY ("activateIn");
COMMIT TRANSACTION;
