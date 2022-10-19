alter table "laundry_system"."Orders"
  add constraint "Orders_customer_id_fkey"
  foreign key ("customer_id")
  references "laundry_system"."Customers"
  ("id") on update restrict on delete restrict;
