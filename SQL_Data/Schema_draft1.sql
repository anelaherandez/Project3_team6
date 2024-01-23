CREATE TABLE "Gender_Inequality_Decade1_Data" (
    "HDI rank" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Human Development Index (HDI Value)" decimal   NOT NULL,
    "ISO3" varchar(3)   NOT NULL,
    "Continent" varchar(12)   NOT NULL,
    "Hemisphere" varchar(20)   NOT NULL,
    "Human Development Groups" varchar(15)   NOT NULL,
    "Gender Inequality Index Average (1990-1999)" decimal,
    "Gender Inequality Index Average (2000-2010)" decimal,
    "Gender Inequality Index Average (2011-2021)" decimal,
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
    "Human Development Index (HDI Value)" decimal   NOT NULL,
    "ISO3" varchar(3)   NOT NULL,
    "Continent" varchar(12)   NOT NULL,
    "Hemisphere" varchar(20)   NOT NULL,
    "Human Development Groups" varchar(15)   NOT NULL,
    "Maternal Mortality Ratio Average (1990-1999)" decimal,
    "Maternal Mortality Ratio Average (2000-2010)" decimal,
    "Maternal Mortality Ratio Average (2011-2021)" decimal,
    CONSTRAINT "pk_Maternal_Mortality_Decade1_Data" PRIMARY KEY (
        "ISO3"
     ),
    CONSTRAINT "uc_Maternal_Mortality_Decade1_Data_Country" UNIQUE (
        "Country"
    )
);

CREATE TABLE "HDI Rank2021" (
    "HDI rank" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Human Development Index (HDI Value)" decimal   NOT NULL,
    "Life expectancy at birth (years)" decimal   NOT NULL,
    "Expected years of schooling (years)" decimal   NOT NULL,
    "Mean years of schooling (years)" decimal   NOT NULL,
    "Gross national income (GNI) per capita (2017 PPP $)" varchar   NOT NULL,
    "GNI per capita rank minus HDI rank" int   NOT NULL,
    CONSTRAINT "pk_HDI Rank2021" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "HDI_Country" (
    "HDI rank" int   NOT NULL,
    "Country" varchar(50)   NOT NULL,
    "Human Development Index (HDI value)" decimal   NOT NULL,
    CONSTRAINT "pk_HDI_Country" PRIMARY KEY (
        "Country"
     )
);