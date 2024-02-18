alter table "public"."honor_time" drop constraint "honor_time_pkey";
alter table "public"."honor_time"
    add constraint "honor_time_pkey"
    primary key ("start_A");
