CREATE TABLE "laundry_service"."process" ("process_id" serial NOT NULL, "order_detail_id" integer NOT NULL, "staff_id" integer NOT NULL, "manager_id" integer NOT NULL, "process_name" text NOT NULL, "process_status" text NOT NULL, PRIMARY KEY ("process_id") , UNIQUE ("process_id"));
