alter table "public"."contest_round" rename column "map_id" to "maps";
alter table "public"."contest_round" alter column "maps" set not null;
