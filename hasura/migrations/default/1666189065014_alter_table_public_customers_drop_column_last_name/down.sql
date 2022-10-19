alter table "public"."customers" alter column "last_name" drop not null;
alter table "public"."customers" add column "last_name" varchar;
