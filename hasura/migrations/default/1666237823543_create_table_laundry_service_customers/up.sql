CREATE TABLE "laundry_service"."customers" ("customer_id" serial NOT NULL, "fullname" text NOT NULL, "email" text NOT NULL, "phone" text NOT NULL, "address" text NOT NULL, "active" boolean NOT NULL, PRIMARY KEY ("customer_id") , UNIQUE ("customer_id"));