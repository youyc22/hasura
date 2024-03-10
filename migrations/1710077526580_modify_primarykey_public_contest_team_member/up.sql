BEGIN TRANSACTION;
ALTER TABLE "public"."contest_team_member" DROP CONSTRAINT "contest_team_member_pkey";

ALTER TABLE "public"."contest_team_member"
    ADD CONSTRAINT "contest_team_member_pkey" PRIMARY KEY ("user_uuid", "team_id");
COMMIT TRANSACTION;
