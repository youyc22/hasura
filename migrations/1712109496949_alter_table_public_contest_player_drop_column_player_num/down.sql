comment on column "public"."contest_player"."player_num" is E'记录每个比赛可以允许几队、每队有几个玩家、每个玩家可以选择哪些角色';
alter table "public"."contest_player" alter column "player_num" drop not null;
alter table "public"."contest_player" add column "player_num" int4;
