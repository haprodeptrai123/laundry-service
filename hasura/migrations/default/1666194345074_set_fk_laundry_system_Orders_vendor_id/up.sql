alter table "laundry_system"."Orders"
  add constraint "Orders_vendor_id_fkey"
  foreign key ("vendor_id")
  references "laundry_system"."Vendor"
  ("vendor_id") on update restrict on delete restrict;
