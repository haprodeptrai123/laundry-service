alter table "laundry_system"."Process"
  add constraint "Process_staff_id_fkey"
  foreign key ("staff_id")
  references "laundry_system"."Staffs"
  ("staff_id") on update restrict on delete restrict;
