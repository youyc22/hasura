alter table "public"."contest_room_team" alter column "players" drop not null;
alter table "public"."contest_room_team" add column "players" text;
