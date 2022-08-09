alter table "public"."contest_manager"
           add constraint "contest_manager_contest_id_fkey"
           foreign key ("contest_id")
           references "public"."contest"
           ("id") on update restrict on delete restrict;
