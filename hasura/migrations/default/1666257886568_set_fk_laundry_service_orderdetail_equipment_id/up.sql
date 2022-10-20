alter table "laundry_service"."orderdetail"
  add constraint "orderdetail_equipment_id_fkey"
  foreign key ("equipment_id")
  references "laundry_service"."equipment"
  ("equipment_id") on update restrict on delete restrict;
