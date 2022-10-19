alter table "laundry_system"."Voucher"
  add constraint "Voucher_service_id_fkey"
  foreign key ("service_id")
  references "laundry_system"."Service"
  ("service_id") on update restrict on delete restrict;
