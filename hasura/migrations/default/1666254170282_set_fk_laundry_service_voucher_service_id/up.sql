alter table "laundry_service"."voucher"
  add constraint "voucher_service_id_fkey"
  foreign key ("service_id")
  references "laundry_service"."service"
  ("service_id") on update restrict on delete restrict;
