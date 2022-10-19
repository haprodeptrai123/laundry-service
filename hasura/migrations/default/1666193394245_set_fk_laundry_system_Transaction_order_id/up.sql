alter table "laundry_system"."Transaction"
  add constraint "Transaction_order_id_fkey"
  foreign key ("order_id")
  references "laundry_system"."Orders"
  ("order_id") on update restrict on delete restrict;
