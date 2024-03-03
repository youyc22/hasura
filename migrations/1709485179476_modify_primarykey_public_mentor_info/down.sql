alter table "public"."mentor_info" drop constraint "mentor_info_pkey";
alter table "public"."mentor_info"
    add constraint "mentor_info_pkey"
    primary key ("mentor_id");
