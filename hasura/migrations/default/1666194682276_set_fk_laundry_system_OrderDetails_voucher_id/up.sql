alter table "laundry_system"."OrderDetails"
  add constraint "OrderDetails_voucher_id_fkey"
  foreign key ("voucher_id")
  references "laundry_system"."Voucher"
  ("voucher_id") on update restrict on delete restrict;
