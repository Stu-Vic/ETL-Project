-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "accident_event" (
    "accident_no" varchar   NOT NULL,
	"event_type" varchar not null,
    "event_type_desc" VARCHAR   NOT NULL,
    "vehicle_1_coll_pt_desc" VARCHAR   NOT NULL,
	"vehicle_2_coll_pt_desc" varchar not null,
    PRIMARY KEY (
        "accident_no"
     )
);

CREATE TABLE "accident" (
    "accident_no" varchar   NOT NULL,
    "accident_date" varchar   NOT NULL,
    "accident_time" varchar   NOT NULL,
    "accident_type_desc" VARCHAR   NOT NULL,
    "day_week_desc" VARCHAR   NOT NULL,
	"dca_code" varchar not null,
    "dca_desc" VARCHAR   NOT NULL,
    "node_ID" VARCHAR   NOT NULL,
    "road_geometry_desc" VARCHAR   NOT NULL,
    "speed_zone" varchar   NOT NULL,
    CONSTRAINT "pk_accident_event" PRIMARY KEY (
        "accident_no"
     )
);

CREATE TABLE "accident_location" (
    "accident_no" varchar,
    "road_name" varchar,
    "road_type" VARCHAR,
    "road_name_int" VARCHAR,
    "road_type_int" VARCHAR,
    CONSTRAINT "pk_accident_location" PRIMARY KEY (
        "accident_no"
     )
);

-- ALTER TABLE "accident_event" ADD CONSTRAINT "fk_accident_event_accident_no_speed_zone" FOREIGN KEY("accident_no", "speed_zone")
-- REFERENCES "accident" ("accident_no", "speed_zone");

-- ALTER TABLE "accident_location" ADD CONSTRAINT "fk_accident_location_accdent_no_node_id" FOREIGN KEY("accdent_no", "node_id")
-- REFERENCES "accident" ("accident_no", "node_id");


select * from accident;

select * from accident_event;

select * from accident_location;

drop table accident;

drop table accident_event;

drop table accident_location;

-- NOTE!! accident_event table to be replaced
