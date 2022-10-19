alter table "laundry_system"."OrderDetails"
  add constraint "OrderDetails_order_id_fkey"
  foreign key ("order_id")
  references "laundry_system"."Orders"
  ("order_id") on update restrict on delete restrict;
