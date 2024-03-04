BEGIN TRANSACTION;
ALTER TABLE "public"."mentor_available" DROP CONSTRAINT "mentor_available_pkey";

ALTER TABLE "public"."mentor_available"
    ADD CONSTRAINT "mentor_available_pkey" PRIMARY KEY ("mentor_uuid");
COMMIT TRANSACTION;
