alter table "public"."thuai_room_team" add foreign key ("thuai_team_id") references "public"."thuai"("team_id") on update restrict on delete restrict;
