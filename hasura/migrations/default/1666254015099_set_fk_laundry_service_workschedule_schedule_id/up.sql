alter table "laundry_service"."workschedule"
  add constraint "workschedule_schedule_id_fkey"
  foreign key ("schedule_id")
  references "laundry_service"."schedule"
  ("schedule_id") on update restrict on delete restrict;
