alter table "public"."contest_manager"
    add constraint "contest_manager_pkey" 
    primary key ( "contest_id", "user_id" );
