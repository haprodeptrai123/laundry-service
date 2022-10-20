CREATE TABLE "laundry_service"."schedule" ("schedule_id" serial NOT NULL, "date" date NOT NULL, "slot" integer NOT NULL, PRIMARY KEY ("schedule_id") , UNIQUE ("schedule_id"));
