-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Gender_Inequality_Decade_Data" (
    "HDI rank" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Human Development Index (HDI Value)" decimal(4,3)   NOT NULL,
    "Life expectancy at birth (years)" decimal(3,1)   NOT NULL,
    "Expected years of schooling (years)" decimal(3,1)   NOT NULL,
    "Mean years of schooling (years)" decimal(2,1)   NOT NULL,
    "Gross national income (GNI) per capita (2017 PPP $)" int   NOT NULL,
    "GNI per capita rank minus HDI rank" int   NOT NULL,
    "ISO3" varchar(3)   NOT NULL,
    "Continent" varchar(12)   NOT NULL,
    "Hemisphere" varchar(20)   NOT NULL,
    "Human Development Groups" varchar(15)   NOT NULL,
    "UNDP Developing Regions" varchar(3)   NOT NULL,
    "Gender Inequality Index Average (1990-1999)" decimal(5,4)   NOT NULL,
    "Gender Inequality Index Average (2000-2010)" decimal(5,4)   NOT NULL,
    "Gender Inequality Index Average (2011-2021)" decimal(5,4)   NOT NULL,
    CONSTRAINT "pk_Gender_Inequality_Decade_Data" PRIMARY KEY (
        "Continent"
     )
);

CREATE TABLE "Maternal_Mortality_Decade_Data" (
    "HDI rank" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Human Development Index (HDI Value)" decimal(4,3)   NOT NULL,
    "Life expectancy at birth (years)" decimal(3,1)   NOT NULL,
    "Expected years of schooling (years)" decimal(3,1)   NOT NULL,
    "Mean years of schooling (years)" decimal(2,1)   NOT NULL,
    "Gross national income (GNI) per capita (2017 PPP $)" int   NOT NULL,
    "GNI per capita rank minus HDI rank" int   NOT NULL,
    "ISO3" varchar(3)   NOT NULL,
    "Continent" varchar(12)   NOT NULL,
    "Hemisphere" varchar(20)   NOT NULL,
    "Human Development Groups" varchar(15)   NOT NULL,
    "UNDP Developing Regions" varchar(3)   NOT NULL,
    "HDI Rank (2021)" int   NOT NULL,
    "Maternal Mortality Ratio (deaths per 100,000 live births) Average (1990-1999)" decimal(5,4)   NOT NULL,
    "Maternal Mortality Ratio (deaths per 100,000 live births) Average (2000-2010)" decimal(5,4)   NOT NULL,
    "Maternal Mortality Ratio (deaths per 100,000 live births) Average (2011-2021)" decimal(5,4)   NOT NULL,
    CONSTRAINT "pk_Maternal_Mortality_Decade_Data" PRIMARY KEY (
        "Continent"
     )
);

CREATE TABLE "HDI Rank2021" (
    "HDI rank" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Human Development Index (HDI Value)" decimal(4,3)   NOT NULL,
    "Life expectancy at birth (years)" decimal(3,1)   NOT NULL,
    "Expected years of schooling (years)" decimal(3,1)   NOT NULL,
    "Mean years of schooling (years)" decimal(2,1)   NOT NULL,
    "Gross national income (GNI) per capita (2017 PPP $)" int   NOT NULL,
    "GNI per capita rank minus HDI rank" int   NOT NULL,
    CONSTRAINT "pk_HDI Rank2021" PRIMARY KEY (
        "Country"
     )
);

ALTER TABLE "Maternal_Mortality_Decade_Data" ADD CONSTRAINT "fk_Maternal_Mortality_Decade_Data_HDI rank_Country_Continent" FOREIGN KEY("HDI rank", "Country", "Continent")
REFERENCES "Gender_Inequality_Decade_Data" ("HDI rank", "Country", "Continent");

ALTER TABLE "HDI Rank2021" ADD CONSTRAINT "fk_HDI Rank2021_HDI rank_Country" FOREIGN KEY("HDI rank", "Country")
REFERENCES "Gender_Inequality_Decade_Data" ("HDI rank", "Country");

