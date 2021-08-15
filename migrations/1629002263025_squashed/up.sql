
ALTER TABLE "public"."team" ADD COLUMN "score" integer NULL DEFAULT 0;

ALTER TABLE "public"."team" ADD COLUMN "summary" text NULL;

CREATE TABLE "public"."team_user"("team_id" uuid NOT NULL, "user_id" text NOT NULL, "is_leader" boolean NOT NULL DEFAULT false, PRIMARY KEY ("team_id","user_id") , FOREIGN KEY ("user_id") REFERENCES "public"."user"("_id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("team_id") REFERENCES "public"."team"("id") ON UPDATE restrict ON DELETE restrict); COMMENT ON TABLE "public"."team_user" IS E'team和user一对多映射表';

COMMENT ON TABLE "public"."team_member" IS E'deprecated';
