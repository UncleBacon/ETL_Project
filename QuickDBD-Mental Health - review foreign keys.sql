-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/mDkV6c
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Database name ETL_db

DROP TABLE IF EXISTS Human_Development_Index;
DROP TABLE IF EXISTS Economic;
DROP TABLE IF EXISTS Suicide;

CREATE TABLE "Human_Development_Index" (
    "Country" varchar   NOT NULL,
    "Year" varchar   NOT NULL,
    "HDI" float   NOT NULL,
    CONSTRAINT "pk_Human_Development_Index" PRIMARY KEY (
        "Country","Year"
     )
);

CREATE TABLE "Economic" (
    "Country" varchar   NOT NULL,
    "Year" int   NOT NULL,
    "GDP_growth" float   NOT NULL,
    "Inflation" float   NOT NULL,
    CONSTRAINT "pk_Economic" PRIMARY KEY (
        "Country","Year"
     )
);

CREATE TABLE "Suicide" (
    "Country" varchar   NOT NULL,
    "Year" int   NOT NULL,
    "Suicide_Rate_Male" float   NOT NULL,
    "Suicide_Rate_Female" float   NOT NULL,
    CONSTRAINT "pk_Suicide" PRIMARY KEY (
        "Country","Year"
     )
);

ALTER TABLE "Human_Development_Index" ADD CONSTRAINT "fk_Human_Development_Index_Country_Year" FOREIGN KEY("Country", "Year")
REFERENCES "Suicide" ("Country", "Year");

ALTER TABLE "Economic" ADD CONSTRAINT "fk_Economic_Country_Year" FOREIGN KEY("Country", "Year")
REFERENCES "Suicide" ("Country", "Year");

