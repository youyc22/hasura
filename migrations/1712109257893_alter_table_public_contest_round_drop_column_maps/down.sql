comment on column "public"."contest_round"."maps" is E'正式比赛的每轮（初赛、决赛）信息';
alter table "public"."contest_round" alter column "maps" drop not null;
alter table "public"."contest_round" add column "maps" text;
