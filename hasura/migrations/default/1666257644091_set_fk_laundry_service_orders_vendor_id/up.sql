alter table "laundry_service"."orders"
  add constraint "orders_vendor_id_fkey"
  foreign key ("vendor_id")
  references "laundry_service"."vendor"
  ("vendor_id") on update restrict on delete restrict;
