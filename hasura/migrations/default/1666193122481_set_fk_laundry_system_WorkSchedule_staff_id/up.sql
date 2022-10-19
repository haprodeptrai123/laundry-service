alter table "laundry_system"."WorkSchedule"
  add constraint "WorkSchedule_staff_id_fkey"
  foreign key ("staff_id")
  references "laundry_system"."Staffs"
  ("staff_id") on update restrict on delete restrict;
