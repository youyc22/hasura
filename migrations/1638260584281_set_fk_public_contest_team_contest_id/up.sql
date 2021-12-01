alter table "public"."contest_team"
           add constraint "contest_team_contest_id_fkey"
           foreign key ("contest_id")
           references "public"."contest"
           ("id") on update restrict on delete restrict;
