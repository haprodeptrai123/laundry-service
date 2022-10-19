alter table "public"."customers" rename column "full_name" to "first_name";
ALTER TABLE "public"."customers" ALTER COLUMN "first_name" TYPE character varying;
