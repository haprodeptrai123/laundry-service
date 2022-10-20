alter table "laundry_service"."process"
  add constraint "process_staff_id_fkey"
  foreign key ("staff_id")
  references "laundry_service"."staff"
  ("staff_id") on update restrict on delete restrict;
