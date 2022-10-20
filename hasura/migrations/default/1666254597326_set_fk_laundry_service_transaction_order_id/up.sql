alter table "laundry_service"."transaction"
  add constraint "transaction_order_id_fkey"
  foreign key ("order_id")
  references "laundry_service"."orders"
  ("order_id") on update restrict on delete restrict;
