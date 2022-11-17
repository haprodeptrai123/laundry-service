CREATE TABLE "test"."questions" ("id" uuid NOT NULL, "question" text NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") );
