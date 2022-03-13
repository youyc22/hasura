alter table "public"."contest_manager"
    add constraint "contest_manager_pkey" 
    primary key ( "user_id", "contest_id" );
