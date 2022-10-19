alter table "laundry_system"."Transaction"
  add constraint "Transaction_payment_id_fkey"
  foreign key ("payment_id")
  references "laundry_system"."Payment"
  ("payment_id") on update restrict on delete restrict;
