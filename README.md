
# Exploring the Human Development Index Attributes: Maternal Mortality and Gender Inequality from 1990 to 2021
## Team Members: Andrea Hernandez, Breona Lewis, Mark Mason, Daniela Trujillo

## Project Background
The goal of this ETL project is to explore the Human Development Index (HDI) created from the United Nations Human Development Report by specifically focusing on maternal mortality rates and gender inequality data differences and trends from 1990 to 2021. 
The HDI looks at three dimensions of human development to measure their relative success in achieving a long healthy life, access to knowledge, and a quality standard of living. By assessing life expectancy, years of schooling and gross national income, this index informs governments on public policy and what changes can be made to improve the quality of life for all humanity. Two attributes that factor in to understanding life expectancy are maternal mortality and gender inequality. As these two attributes decrease, a country's HDI rank will likely increase. 
By creating a database of country's HDI rank and average maternal mortality and gender inequality ratios by decade from 1990 to 2021, one can begin to assess the success and shortcomings of worldwide and national policies that aim to improve the livelihoods of all women. This project set out to explore the following Research Questions:
        1) What developing regions have the highest maternal mortality and gender inequality rates? 
            a. Did this change from the 90’s to 2000’s?
        2) What is the correlation between HDI rank and maternal mortality?
        3) What is the correlation between HDI rank and gender inequality?
        4) What are the differences in HDI rank, maternal mortality, and gender inequality between hemispheres?
            a. Did this change from the 90’s to the 2000’s?


![hdiRoadMap](https://github.com/anelaherandez/Project3_team6/assets/144189200/d15a699f-448c-49e8-8952-696701418c68)

## ETL
This project combined datasets on maternal mortality, gender inequality, as well as a HDI ranking (2021) spreadsheet,
to understand the variation throughout world regions from 1990 to 2021. 
1) Extract:
The first step in this project was to extract all three datasets from their sources and read them into a jupyter notebook. 
The maternal mortality and gender inequality csv files were obtained from Kaggle and were created by Sourav Banerjee. The HDI rank (2021) dataset came from the UNDP website.
This dataset was an excel spreadsheet that was cleaned up and transformed into a csv file prior to reading it into a jupyter notebook. 
The Polars Dataframe Library was used to read in the csv files and transformation. Matplotlib was also utilized for simple graphs to visually assess the data. 
2) Transform:
The transformation of the datasets focused on taking the yearly maternal mortality ratios and gender inequality index values from 1990 to 2021 and averaging them by decades:
1990-1999
2000-2010
2011-2021.
We then created new tables of HDI rank and Human Development Groups data with each decade average for both maternal mortality and gender inequality.
These tables were also transformed to look at the difference between the Northern and Southern Hemisphere and the different Human Development Groups (Low, Medium, High, Very High). This tranformation showed that Southern Hemisphere countries primarily rank lower than Northern Hemisphere countries, however there has been significant improvement in mortality and gender inequality values in the last 30 years. 

![fig1a](https://github.com/anelaherandez/Project3_team6/assets/144189200/d774619b-2678-48a6-8fd4-8a0f01dbbd95)

![output](https://github.com/anelaherandez/Project3_team6/assets/144189200/436407cc-ec66-4539-a069-c71c0584a5b8)

3) Load:
Four main tables from our transformed data were loaded into a Postgres SQL database for further exploration. Although it is out of the scope for this project, in this SQL database further exploration of other HDI attributes can be explored such as average years of schooling or gross nation income in relation to maternal mortality and gender inequality. 
An ERD diagram was created using DBD website. 

![ERD_Diagram_use](https://github.com/anelaherandez/Project3_team6/assets/144189200/62ef5495-7543-484b-aa9a-cba66d45a04e)

## Conclusions:
The main takeaway from this ETL project was learning how useful the polars dataframe library can be for an ETL project. The library is efficient, fast, and easy to learn. It is very comparable to Pandas and has an ease to its coding that makes it painless for dataset transformation. 
The creation of the SQL database did present a few roadblocks with respect to creating primary and foreign keys. The HDI ranking system did have duplicate ranking positions so it could not be used as a one to one relationship, but using the country attribute fixed the problem. Also making sure the naming of columns was more precise without any spacing created issues. These issues showed the importance of concise data transformation for any project. 

We were able to address our research questions, however more exploration using the SQL database is needed to fully understand the relationship between maternal mortality and gender inequality with specific HDI rank measurements. This project showed that developing regions in both the Northern and Southern Hemisphere have widespread variation in maternal mortality and gender inequality values, however across the board these rates decreased from the 1990's to 2021. Also it seems the Southern Hemisphere has a higher rate of maternal mortality and gender inequality compared to the Northern Hemisphere. 
The correlation between the HDI rank and maternal mortality/gender inequality is the lower ranked countries have lower rates in both maternal mortality and gender inequality and have consistently decreased from each decade throughout the last 30 years. 


# Dataset References:
Maternal Mortality: https://www.kaggle.com/datasets/iamsouravbanerjee/maternal-mortality-dataset
Gender Inequality: https://www.kaggle.com/datasets/iamsouravbanerjee/gender-inequality-index-dataset
HDI Rank 2021: https://hdr.undp.org/data-center/documentation-and-downloads
