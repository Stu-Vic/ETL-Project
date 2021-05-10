CREATE TABLE "accident" (
    "accident_no" varchar   NOT NULL,
    "accident_date" varchar   NOT NULL,
    "accident_time" varchar   NOT NULL,
    "accident_type_desc" varchar   NOT NULL,
    "day_week_desc" varchar   NOT NULL,
    "dca_code" varchar   NOT NULL,
    "dca_desc" varchar   NOT NULL,
    "node_id" varchar   NOT NULL,
    "road_geometry_desc" varchar   NOT NULL,
    "speed_zone" varchar   NOT NULL,
    CONSTRAINT "pk_accident" PRIMARY KEY (
        "accident_no"
     )
);

CREATE TABLE "accident_location" (
    "accident_no" varchar   NOT NULL,
    "road_name" varchar   NOT NULL,
    "road_type" varchar   NOT NULL,
    "road_name_int" varchar   NOT NULL,
    "road_type_int" varchar   NOT NULL
);

CREATE TABLE "road_surface_cond" (
    "accident_no" varchar   NOT NULL,
    "surface_cond_desc" varchar   NOT NULL
);

CREATE TABLE "atmospheric_cond" (
    "accident_no" varchar   NOT NULL,
    "atmosph_cond_desc" varchar   NOT NULL
);

ALTER TABLE "accident_location" ADD CONSTRAINT "fk_event_location_accident_no" FOREIGN KEY("accident_no")
REFERENCES "accident" ("accident_no");

ALTER TABLE "road_surface_cond" ADD CONSTRAINT "fk_road_surface_cond_accident_no" FOREIGN KEY("accident_no")
REFERENCES "accident" ("accident_no");

ALTER TABLE "atmospheric_cond" ADD CONSTRAINT "fk_atmospheric_cond_accident_no" FOREIGN KEY("accident_no")
REFERENCES "accident" ("accident_no");

-- drop table "accident";

-- drop table "event_location"

select * from accident;

select * from accident_location;

select * from atmospheric_cond;

select * from road_surface_cond;