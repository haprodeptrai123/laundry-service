alter table "laundry_system"."Orders"
  add constraint "Orders_manager_id_fkey"
  foreign key ("manager_id")
  references "laundry_system"."Manager"
  ("manager_id") on update restrict on delete restrict;
