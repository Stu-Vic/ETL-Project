-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [accident] (
    [accident_no] INT  NOT NULL ,
    [accident_date] DATETIME  NOT NULL ,
    [accident_time] DATETIME  NOT NULL ,
    [accident_type_desc] VARCHAR  NOT NULL ,
    [day_week_desc] VARCHAR  NOT NULL ,
    [DCA_code] INT  NOT NULL ,
    [DCA_desc] VARCHAR  NOT NULL ,
    [node_ID] INT  NOT NULL ,
    [road_geometry_desc] VARCHAR  NOT NULL ,
    [speed_zone] INT  NOT NULL ,
    CONSTRAINT [PK_accident] PRIMARY KEY CLUSTERED (
        [accident_no] ASC
    )
)

CREATE TABLE [accident_event] (
    [accident_no] INT  NOT NULL ,
    [event_type] VARCHAR  NOT NULL ,
    [event_type_desc] VARCHAR  NOT NULL ,
    [vehicle_1_coll_pt_desc] VARCHAR  NOT NULL ,
    [vehicle_2_coll_pt_desc] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_accident_event] PRIMARY KEY CLUSTERED (
        [accident_no] ASC
    )
)

CREATE TABLE [event_location] (
    [accident_no] INT  NOT NULL ,
    [road_name] VARCHAR  NOT NULL ,
    [road_type] VARCHAR  NOT NULL ,
    [road_name_int] VARCHAR  NOT NULL ,
    [road_type_int] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_event_location] PRIMARY KEY CLUSTERED (
        [accident_no] ASC
    )
)

ALTER TABLE [accident_event] WITH CHECK ADD CONSTRAINT [FK_accident_event_accident_no] FOREIGN KEY([accident_no])
REFERENCES [accident] ([accident_no])

ALTER TABLE [accident_event] CHECK CONSTRAINT [FK_accident_event_accident_no]

ALTER TABLE [event_location] WITH CHECK ADD CONSTRAINT [FK_event_location_accident_no] FOREIGN KEY([accident_no])
REFERENCES [accident] ([accident_no])

ALTER TABLE [event_location] CHECK CONSTRAINT [FK_event_location_accident_no]

COMMIT TRANSACTION QUICKDBD