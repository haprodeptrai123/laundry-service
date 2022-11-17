CREATE TABLE "test"."user_answers" ("id" uuid NOT NULL, "user_id" text NOT NULL, "question_id" uuid NOT NULL, "answer_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("answer_id") REFERENCES "test"."question_answers"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("question_id") REFERENCES "test"."questions"("id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("user_id") REFERENCES "test"."users"("id") ON UPDATE restrict ON DELETE restrict);