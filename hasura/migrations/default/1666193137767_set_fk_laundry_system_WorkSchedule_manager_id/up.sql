alter table "laundry_system"."WorkSchedule"
  add constraint "WorkSchedule_manager_id_fkey"
  foreign key ("manager_id")
  references "laundry_system"."Manager"
  ("manager_id") on update restrict on delete restrict;
