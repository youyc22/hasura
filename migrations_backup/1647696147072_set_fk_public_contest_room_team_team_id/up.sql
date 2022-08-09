alter table "public"."contest_room_team"
           add constraint "contest_room_team_team_id_fkey"
           foreign key ("team_id")
           references "public"."contest_team"
           ("team_id") on update restrict on delete restrict;
