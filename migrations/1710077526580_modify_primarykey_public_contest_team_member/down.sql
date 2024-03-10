alter table "public"."contest_team_member" drop constraint "contest_team_member_pkey";
alter table "public"."contest_team_member"
    add constraint "contest_team_member_pkey"
    primary key ("user_id", "team_id");
