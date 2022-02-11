CREATE TABLE "Customer" (
  "id" int PRIMARY KEY,
  "first_name" VARCHAR(255),
  "last_name" VARCHAR(255),
  "email" VARCHAR(255)
);

CREATE TABLE "Ticket" (
  "id" int PRIMARY KEY,
  "movie_name" varchar(255),
  "price" float
);

CREATE TABLE "Movies" (
  "id" int PRIMARY KEY,
  "title" varchar(255),
  "rating" varchar(255),
  "run_time" int
);

CREATE TABLE "Concession" (
  "id" int PRIMARY KEY,
  "item" varchar(255),
  "size" varchar(255),
  "price" float
);

CREATE TABLE "Check_Out" (
  "id" in PRIMARY KEY,
  "customer_id" int,
  "ticket_id" int,
  "concession" float,
  "total" float
);

CREATE TABLE "V_I_P" (
  "id" int PRIMARY KEY,
  "first_name" VARCHAR(255),
  "last_name" VARCHAR(255),
  "email" VARCHAR(255),
  "discount" float
);

ALTER TABLE "Customer" ADD FOREIGN KEY ("id") REFERENCES "V_I_P" ("id");

ALTER TABLE "Customer" ADD FOREIGN KEY ("id") REFERENCES "Concession" ("id");

ALTER TABLE "Customer" ADD FOREIGN KEY ("id") REFERENCES "Movies" ("id");

ALTER TABLE "Customer" ADD FOREIGN KEY ("id") REFERENCES "Ticket" ("id");

ALTER TABLE "Customer" ADD FOREIGN KEY ("id") REFERENCES "Check_Out" ("id");

ALTER TABLE "Concession" ADD FOREIGN KEY ("id") REFERENCES "Check_Out" ("id");

ALTER TABLE "V_I_P" ADD FOREIGN KEY ("id") REFERENCES "Check_Out" ("id");

ALTER TABLE "V_I_P" ADD FOREIGN KEY ("id") REFERENCES "Ticket" ("id");

ALTER TABLE "V_I_P" ADD FOREIGN KEY ("id") REFERENCES "Concession" ("id");

ALTER TABLE "Ticket" ADD FOREIGN KEY ("id") REFERENCES "Check_Out" ("id");

ALTER TABLE "Movies" ADD FOREIGN KEY ("id") REFERENCES "Ticket" ("id");
