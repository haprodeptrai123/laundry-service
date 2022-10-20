alter table "laundry_service"."orders"
  add constraint "orders_feedback_id_fkey"
  foreign key ("feedback_id")
  references "laundry_service"."feedback"
  ("feedback_id") on update restrict on delete restrict;
