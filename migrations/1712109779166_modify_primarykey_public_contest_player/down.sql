alter table "public"."contest_player" drop constraint "contest_player_pkey";
alter table "public"."contest_player"
    add constraint "contest_player_pkey"
    primary key ("contest_id", "team_label");
