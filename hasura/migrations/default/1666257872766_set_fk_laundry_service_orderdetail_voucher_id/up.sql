alter table "laundry_service"."orderdetail"
  add constraint "orderdetail_voucher_id_fkey"
  foreign key ("voucher_id")
  references "laundry_service"."voucher"
  ("voucher_id") on update restrict on delete restrict;
