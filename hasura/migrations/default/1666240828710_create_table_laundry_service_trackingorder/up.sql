CREATE TABLE "laundry_service"."trackingorder" ("tracking_id" serial NOT NULL, "order_detail_id" integer NOT NULL, "time" timestamp NOT NULL, "order_status" text NOT NULL, PRIMARY KEY ("tracking_id") , UNIQUE ("tracking_id"));