alter table "laundry_service"."process"
  add constraint "process_order_detail_id_fkey"
  foreign key ("order_detail_id")
  references "laundry_service"."orderdetail"
  ("order_detail_id") on update restrict on delete restrict;
