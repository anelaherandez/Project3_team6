-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Gender_Inequality_Decade1_Data" (
    "HDI rank" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Human Development Index (HDI Value)" decimal(4,3)   NOT NULL,
    "ISO3" varchar(3)   NOT NULL,
    "Continent" varchar(12)   NOT NULL,
    "Hemisphere" varchar(20)   NOT NULL,
    "Human Development Groups" varchar(15)   NOT NULL,
    "Gender Inequality Index Average (1990-1999)" decimal(5,4)   NOT NULL,
    "Gender Inequality Index Average (2000-2010)" decimal(5,4)   NOT NULL,
    "Gender Inequality Index Average (2011-2021)" decimal(5,4)   NOT NULL,
    CONSTRAINT "pk_Gender_Inequality_Decade1_Data" PRIMARY KEY (
        "Country"
     ),
    CONSTRAINT "uc_Gender_Inequality_Decade1_Data_ISO3" UNIQUE (
        "ISO3"
    )
);

CREATE TABLE "Maternal_Mortality_Decade1_Data" (
    "HDI rank" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Human Development Index (HDI Value)" decimal(4,3)   NOT NULL,
    "ISO3" varchar(3)   NOT NULL,
    "Continent" varchar(12)   NOT NULL,
    "Hemisphere" varchar(20)   NOT NULL,
    "Human Development Groups" varchar(15)   NOT NULL,
    "Maternal Mortality Ratio Average (1990-1999)" decimal(5,4)   NOT NULL,
    "Maternal Mortality Ratio Average (2000-2010)" decimal(5,4)   NOT NULL,
    "Maternal Mortality Ratio Average (2011-2021)" decimal(5,4)   NOT NULL,
    CONSTRAINT "pk_Maternal_Mortality_Decade1_Data" PRIMARY KEY (
        "HDI rank"
     ),
    CONSTRAINT "uc_Maternal_Mortality_Decade1_Data_Country" UNIQUE (
        "Country"
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
        "HDI rank"
     ),
    CONSTRAINT "uc_HDI Rank2021_Human Development Index (HDI Value)" UNIQUE (
        "Human Development Index (HDI Value)"
    )
);

CREATE TABLE "HDI_Country" (
    "HDI rank" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Human Development Index (HDI value)" decimal(4,3)   NOT NULL,
    CONSTRAINT "pk_HDI_Country" PRIMARY KEY (
        "HDI rank"
     )
);

ALTER TABLE "Gender_Inequality_Decade1_Data" ADD CONSTRAINT "fk_Gender_Inequality_Decade1_Data_Country" FOREIGN KEY("Country")
REFERENCES "Maternal_Mortality_Decade1_Data" ("Country");

ALTER TABLE "HDI_Country" ADD CONSTRAINT "fk_HDI_Country_HDI rank" FOREIGN KEY("HDI rank")
REFERENCES "Maternal_Mortality_Decade1_Data" ("HDI rank");

ALTER TABLE "HDI_Country" ADD CONSTRAINT "fk_HDI_Country_Country" FOREIGN KEY("Country")
REFERENCES "Gender_Inequality_Decade1_Data" ("Country");

ALTER TABLE "HDI_Country" ADD CONSTRAINT "fk_HDI_Country_Human Development Index (HDI value)" FOREIGN KEY("Human Development Index (HDI value)")
REFERENCES "HDI Rank2021" ("Human Development Index (HDI Value)");

