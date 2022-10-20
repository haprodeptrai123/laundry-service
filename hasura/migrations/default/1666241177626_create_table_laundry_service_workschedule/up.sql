CREATE TABLE "laundry_service"."workschedule" ("schedule_id" serial NOT NULL, "staff_id" integer NOT NULL, "manager_id" integer NOT NULL, PRIMARY KEY ("schedule_id") , UNIQUE ("schedule_id"));
