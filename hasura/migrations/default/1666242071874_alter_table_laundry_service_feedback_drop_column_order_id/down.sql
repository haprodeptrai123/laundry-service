alter table "laundry_service"."feedback" alter column "order_id" drop not null;
alter table "laundry_service"."feedback" add column "order_id" int4;
