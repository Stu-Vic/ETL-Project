-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "accident" (
    "accident_no" INT   NOT NULL,
    "event_type_des" VARCHAR   NOT NULL,
    "vehicle_1_coll_pt_desc" VARCHAR   NOT NULL,
    "node_id" INT   NOT NULL,
    "speed_zone" INT   NOT NULL,
    CONSTRAINT "pk_accident" PRIMARY KEY (
        "accident_no"
     )
);

CREATE TABLE "accident_event" (
    "accident_no" INT   NOT NULL,
    "accident_date" DATETIME   NOT NULL,
    "accident_time" DATETIME   NOT NULL,
    "accident_type_desc" VARCHAR   NOT NULL,
    "day_week_desc" VARCHAR   NOT NULL,
    "dca_description" VARCHAR   NOT NULL,
    "directory" VARCHAR   NOT NULL,
    "road_geometry_desc" VARCHAR   NOT NULL,
    "speed_zone" INT   NOT NULL,
    CONSTRAINT "pk_accident_event" PRIMARY KEY (
        "accident_no"
     )
);

CREATE TABLE "accident_location" (
    "accdent_no" INT   NOT NULL,
    "node_id" INT   NOT NULL,
    "road_name" VARCHAR   NOT NULL,
    "road_type" VARCHAR   NOT NULL,
    "road_name_int" VARCHAR   NOT NULL,
    "road_type_int" VARCHAR   NOT NULL,
    CONSTRAINT "pk_accident_location" PRIMARY KEY (
        "accdent_no"
     )
);

ALTER TABLE "accident_event" ADD CONSTRAINT "fk_accident_event_accident_no_speed_zone" FOREIGN KEY("accident_no", "speed_zone")
REFERENCES "accident" ("accident_no", "speed_zone");

ALTER TABLE "accident_location" ADD CONSTRAINT "fk_accident_location_accdent_no_node_id" FOREIGN KEY("accdent_no", "node_id")
REFERENCES "accident" ("accident_no", "node_id");

