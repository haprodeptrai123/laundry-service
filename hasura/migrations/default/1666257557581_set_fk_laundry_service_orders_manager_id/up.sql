alter table "laundry_service"."orders"
  add constraint "orders_manager_id_fkey"
  foreign key ("manager_id")
  references "laundry_service"."manager"
  ("manager_id") on update restrict on delete restrict;
