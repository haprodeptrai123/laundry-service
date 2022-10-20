alter table "laundry_service"."orders"
  add constraint "orders_payment_id_fkey"
  foreign key ("payment_id")
  references "laundry_service"."payment"
  ("payment_id") on update restrict on delete restrict;
