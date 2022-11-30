alter table "laundry_service"."equipment" alter column "equipment_price" drop not null;
alter table "laundry_service"."equipment" add column "equipment_price" text;
