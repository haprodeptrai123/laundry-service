CREATE TABLE "laundry_system"."Orders" ("order_id" Integer NOT NULL, "customer_id" integer NOT NULL, "staff_id" integer NOT NULL, "manager_id" integer NOT NULL, "vendor_id" integer NOT NULL, "required_giving_time" timestamp NOT NULL, "required_delivery_time" timestamp NOT NULL, "payment_id" integer NOT NULL, "create_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("order_id") , UNIQUE ("order_id"));