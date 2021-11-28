

DROP TABLE "public"."contest_room_team";

alter table "public"."contest_room" drop constraint "contest_room_pkey";

ALTER TABLE "public"."contest_room" DROP COLUMN "room_id";

ALTER TABLE "public"."contest_room" ADD COLUMN "room_id" int4;
ALTER TABLE "public"."contest_room" ALTER COLUMN "room_id" DROP NOT NULL;
ALTER TABLE "public"."contest_room" ALTER COLUMN "room_id" SET DEFAULT nextval('contest_room_room_id_seq'::regclass);

alter table "public"."contest_room"
    add constraint "contest_room_pkey" 
    primary key ( "room_id" );

DROP TABLE "public"."contest_room";

DROP TRIGGER IF EXISTS "set_public_contest_code_updated_at" ON "public"."contest_code";
ALTER TABLE "public"."contest_code" DROP COLUMN "updated_at";

ALTER TABLE "public"."contest_code" DROP COLUMN "created_at";

DROP TABLE "public"."contest_code";

COMMENT ON COLUMN "public"."contest_team"."member_num" IS E'';

ALTER TABLE ONLY "public"."contest_team" ALTER COLUMN "member_num" SET DEFAULT 0;

ALTER TABLE "public"."contest_team" DROP COLUMN "member_num";

COMMENT ON TABLE "public"."contest_info" IS NULL;

COMMENT ON TABLE "public"."contest_team" IS NULL;

COMMENT ON TABLE "public"."contest_manager" IS NULL;

DROP TABLE "public"."contest_manager";

DROP TABLE "public"."contest_team_member";

DROP TABLE "public"."contest_team";
