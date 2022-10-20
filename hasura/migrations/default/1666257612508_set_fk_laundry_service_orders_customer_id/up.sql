alter table "laundry_service"."orders"
  add constraint "orders_customer_id_fkey"
  foreign key ("customer_id")
  references "laundry_service"."customers"
  ("customer_id") on update restrict on delete restrict;
