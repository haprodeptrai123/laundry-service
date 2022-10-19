alter table "public"."managers" alter column "phone" drop not null;
alter table "public"."managers" add column "phone" int4;
