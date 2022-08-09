
CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."contest_team"("team_id" uuid NOT NULL DEFAULT gen_random_uuid(), "team_name" text NOT NULL, "team_intro" text, "team_leader" text, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "invited_code" text, "score" text, "status" text, "status2" text, "status3" text, "contest_name" text NOT NULL, PRIMARY KEY ("team_id") , FOREIGN KEY ("team_leader") REFERENCES "public"."user"("_id") ON UPDATE restrict ON DELETE restrict, UNIQUE ("team_id"));
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_contest_team_updated_at"
BEFORE UPDATE ON "public"."contest_team"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_contest_team_updated_at" ON "public"."contest_team" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';

CREATE TABLE "public"."contest_team_member"("team_id" uuid NOT NULL, "user_id" text NOT NULL, PRIMARY KEY ("team_id","user_id") , FOREIGN KEY ("team_id") REFERENCES "public"."contest_team"("team_id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("user_id") REFERENCES "public"."user"("_id") ON UPDATE restrict ON DELETE restrict); COMMENT ON TABLE "public"."contest_team_member" IS E'队伍、成员映射表';


CREATE TABLE "public"."contest_manager"("user_id" text NOT NULL, "contest_name" text NOT NULL, PRIMARY KEY ("user_id","contest_name") , FOREIGN KEY ("user_id") REFERENCES "public"."user"("_id") ON UPDATE restrict ON DELETE restrict);

COMMENT ON TABLE "public"."contest_manager" IS E'比赛管理员映射表';

COMMENT ON TABLE "public"."contest_team" IS E'比赛队伍';

COMMENT ON TABLE "public"."contest_info" IS E'比赛信息';

ALTER TABLE "public"."contest_team" ADD COLUMN "member_num" integer NOT NULL DEFAULT 0;

ALTER TABLE ONLY "public"."contest_team" ALTER COLUMN "member_num" SET DEFAULT 1;

COMMENT ON COLUMN "public"."contest_team"."member_num" IS E'已有人员数量';

CREATE TABLE "public"."contest_code"("contest_name" text NOT NULL, "team_id" uuid NOT NULL, "code1" text NOT NULL, "code2" text NOT NULL, "code3" text, "code4" text, "code5" text, "code6" text, PRIMARY KEY ("team_id") , FOREIGN KEY ("team_id") REFERENCES "public"."contest_team"("team_id") ON UPDATE restrict ON DELETE restrict, UNIQUE ("team_id"));

ALTER TABLE "public"."contest_code" ADD COLUMN "created_at" timestamptz NULL DEFAULT now();

ALTER TABLE "public"."contest_code" ADD COLUMN "updated_at" timestamptz NULL DEFAULT now();

CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_contest_code_updated_at"
BEFORE UPDATE ON "public"."contest_code"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_contest_code_updated_at" ON "public"."contest_code" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';

CREATE TABLE "public"."contest_room"("room_id" serial NOT NULL, "status" boolean NOT NULL DEFAULT false, "result" text, "created_at" timestamptz NOT NULL DEFAULT now(), "contest_name" text NOT NULL, PRIMARY KEY ("room_id") );

alter table "public"."contest_room" drop constraint "contest_room_pkey";

ALTER TABLE "public"."contest_room" DROP COLUMN "room_id" CASCADE;

CREATE EXTENSION IF NOT EXISTS pgcrypto;
ALTER TABLE "public"."contest_room" ADD COLUMN "room_id" uuid NOT NULL DEFAULT gen_random_uuid();

alter table "public"."contest_room"
    add constraint "contest_room_pkey" 
    primary key ( "room_id" );

CREATE TABLE "public"."contest_room_team"("team_id" uuid NOT NULL, "room_id" uuid NOT NULL, PRIMARY KEY ("team_id","room_id") , FOREIGN KEY ("room_id") REFERENCES "public"."contest_room"("room_id") ON UPDATE restrict ON DELETE restrict);
