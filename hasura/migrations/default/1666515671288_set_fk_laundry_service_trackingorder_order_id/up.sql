alter table "laundry_service"."trackingorder" drop constraint "trackingorder_order_detail_id_fkey",
  add constraint "trackingorder_order_id_fkey"
  foreign key ("order_id")
  references "laundry_service"."orders"
  ("order_id") on update restrict on delete restrict;
