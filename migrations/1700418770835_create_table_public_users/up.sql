CREATE TABLE "public"."users" ("uuid" uuid NOT NULL, "username" text NOT NULL, "password" text NOT NULL, "role" text NOT NULL, "realname" text, "email" text NOT NULL, "phone" text, "student_no" text, "department" text, "class" text, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "tsinghua_email" text, "github_id" text, PRIMARY KEY ("uuid","username","email","student_no") , UNIQUE ("uuid"), UNIQUE ("username"), UNIQUE ("email"), UNIQUE ("phone"), UNIQUE ("student_no"), UNIQUE ("tsinghua_email"), UNIQUE ("github_id"));
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
CREATE TRIGGER "set_public_users_updated_at"
BEFORE UPDATE ON "public"."users"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_users_updated_at" ON "public"."users" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
