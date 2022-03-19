alter table "public"."contest_room"
           add constraint "contest_room_contest_id_fkey"
           foreign key ("contest_id")
           references "public"."contest"
           ("id") on update restrict on delete restrict;
