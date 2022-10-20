alter table "laundry_service"."orderdetail"
  add constraint "orderdetail_order_id_fkey"
  foreign key ("order_id")
  references "laundry_service"."orders"
  ("order_id") on update restrict on delete restrict;
