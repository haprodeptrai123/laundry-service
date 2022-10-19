alter table "laundry_system"."WorkSchedule"
  add constraint "WorkSchedule_schedule_id_fkey"
  foreign key ("schedule_id")
  references "laundry_system"."Schedule"
  ("schedule_id") on update restrict on delete restrict;
