CREATE TABLE "test"."users" ("id" text NOT NULL, "email" text NOT NULL, "name" text NOT NULL, "score" integer NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") );
