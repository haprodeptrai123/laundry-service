CREATE TABLE "laundry_service"."service" ("service_id" serial NOT NULL, "service_name" text NOT NULL, "service_description" text NOT NULL, "min_weight" integer NOT NULL, "max_weight" integer NOT NULL, "service_price" float8 NOT NULL, PRIMARY KEY ("service_id") , UNIQUE ("service_id"));
