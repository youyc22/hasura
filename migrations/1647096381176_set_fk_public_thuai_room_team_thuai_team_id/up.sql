alter table "public"."thuai_room_team"
           add constraint "thuai_room_team_thuai_team_id_fkey"
           foreign key ("thuai_team_id")
           references "public"."thuai"
           ("team_id") on update restrict on delete restrict;
