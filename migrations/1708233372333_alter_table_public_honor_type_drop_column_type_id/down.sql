comment on column "public"."honor_type"."type_id" is E'荣誉类别';
alter table "public"."honor_type" alter column "type_id" set default nextval('honor_type_type_id_seq'::regclass);
alter table "public"."honor_type" add constraint "honor_type_type_id_key" unique (type_id);
alter table "public"."honor_type" alter column "type_id" drop not null;
alter table "public"."honor_type" add column "type_id" int4;
