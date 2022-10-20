alter table "laundry_service"."orderdetail"
  add constraint "orderdetail_product_id_fkey"
  foreign key ("product_id")
  references "laundry_service"."product"
  ("product_id") on update restrict on delete restrict;
