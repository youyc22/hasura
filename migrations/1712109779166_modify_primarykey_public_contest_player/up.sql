BEGIN TRANSACTION;
ALTER TABLE "public"."contest_player" DROP CONSTRAINT "contest_player_pkey";

ALTER TABLE "public"."contest_player"
    ADD CONSTRAINT "contest_player_pkey" PRIMARY KEY ("contest_id", "team_label", "player_label");
COMMIT TRANSACTION;
