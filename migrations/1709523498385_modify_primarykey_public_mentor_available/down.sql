alter table "public"."mentor_available" drop constraint "mentor_available_pkey";
alter table "public"."mentor_available"
    add constraint "mentor_available_pkey"
    primary key ("mentor_id");
