alter table "public"."customers" alter column "phone" drop not null;
alter table "public"."customers" add column "phone" int4;
