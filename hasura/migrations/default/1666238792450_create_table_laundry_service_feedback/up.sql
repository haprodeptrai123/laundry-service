CREATE TABLE "laundry_service"."feedback" ("feedback_id" serial NOT NULL, "order_id" integer NOT NULL, "rating" integer NOT NULL, "content" text NOT NULL, PRIMARY KEY ("feedback_id") );
