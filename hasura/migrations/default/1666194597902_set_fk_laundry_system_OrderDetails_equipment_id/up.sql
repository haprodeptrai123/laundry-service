alter table "laundry_system"."OrderDetails"
  add constraint "OrderDetails_equipment_id_fkey"
  foreign key ("equipment_id")
  references "laundry_system"."Equipment"
  ("equipment_id") on update restrict on delete restrict;
