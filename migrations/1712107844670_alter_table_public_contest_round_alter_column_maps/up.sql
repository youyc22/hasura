alter table "public"."contest_round" alter column "maps" drop not null;
alter table "public"."contest_round" rename column "maps" to "map_id";
