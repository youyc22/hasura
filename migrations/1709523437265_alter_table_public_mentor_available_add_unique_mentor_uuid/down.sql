alter table "public"."mentor_available" drop constraint "mentor_available_mentor_uuid_key";
alter table "public"."mentor_available" add constraint "mentor_available_mentor_id_key" unique ("mentor_id");
