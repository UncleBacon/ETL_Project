-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/mDkV6c
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Database name ETL_db


                DROP TABLE IF EXISTS "Hum_Dev_Ind";
                DROP TABLE IF EXISTS "Economic";
                DROP TABLE IF EXISTS "Suicide";    
				
                CREATE TABLE "Hum_Dev_Ind" (
                "Country" varchar   NOT NULL,
                "Year" varchar   NOT NULL,
                "HDI" float   NOT NULL,
                CONSTRAINT "pk_Hum_Dev_Ind" PRIMARY KEY (
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
