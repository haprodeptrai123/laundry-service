alter table "laundry_system"."OrderDetails"
  add constraint "OrderDetails_product_id_fkey"
  foreign key ("product_id")
  references "laundry_system"."Product"
  ("product_id") on update restrict on delete restrict;
