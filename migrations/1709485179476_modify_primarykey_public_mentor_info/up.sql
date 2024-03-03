BEGIN TRANSACTION;
ALTER TABLE "public"."mentor_info" DROP CONSTRAINT "mentor_info_pkey";

ALTER TABLE "public"."mentor_info"
    ADD CONSTRAINT "mentor_info_pkey" PRIMARY KEY ("mentor_uuid");
COMMIT TRANSACTION;
