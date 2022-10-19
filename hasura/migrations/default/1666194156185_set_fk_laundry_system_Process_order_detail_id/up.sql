alter table "laundry_system"."Process"
  add constraint "Process_order_detail_id_fkey"
  foreign key ("order_detail_id")
  references "laundry_system"."OrderDetails"
  ("order_detail_id") on update restrict on delete restrict;
