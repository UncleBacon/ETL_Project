# Necessary Steps to Run all the Project

1. - Install or have installed these libraries in your Git Enviroment:
        -   psycopg2
        -   sqlalchemy
        -   sqlalchemy_utils
        -   pandas
        -   numpy
2. - Update the `\Jupyter Notebooks\config.py` file with your connection data to your `Postgres` database
3. - Run only the `\Jupyter Notebooks\RUN_ME.ipynb` file

- Notes:
  - The code drops the tables in the database ETL_db if existed and uploads all the information again
  - No other notebook or code needs to be run




# Sources of Data

## Suicide rate estimates, crude - Estimates by country

- Source:    WHO
- Link:     http://apps.who.int/gho/data/node.main.MHSUICIDE?lang=en
- Files:    
            - suicide.json
            - suicide.csv

## Economic Data 

- Source:    World Bank
- Link:     https://databank.worldbank.org/source/jobs
- Files:   
            - economic.csv
            - economic_matadata.csv


## Human Development Index (HDI)

- Source:    United Nations Development Program
- Link:     http://hdr.undp.org/en/indicators/137506#





# File Description

#### - `Group_5_ETL_Project_Proposal.pdf` - Contains the text for the project proposal
#### - `Group_5_ETL_Project_Final_Report.pdf` - Contains the text for the project Final Report
#### - `ETL_db Schema` - Contains the SQL code to create the database schema
#### -  `Images`
- `Final Query Result 0` - Contains the images of the queries and resulting tables of the ETL Process
- `Final Query Result 1` - Top 10 Suicide Rate by Country for Males in 2016
- `Final Query Result 2` - Top 10 Suicide Rate by Country for Females in 2016
- `Final Query Result 3` - Suicide Rate for Males among Countries with the lowest GDP growth in 2016
- `Final Query Result 4` - Suicide Rate Among Countries with the lowest HDI in 2016
- `Final Query Result 5` - Average Suicide Rate for Males and Females group by year
- `Final Query Result 6` - Suicide Rate among Countries with the hightest Inflation in 2016
- `Schema` - Contains the image of the schema used to create the tables in the database
#### - `Jupiter Notebooks` 
- `1_RUN_ME.ipynb` - Calls all the other notebooks and manages the ETL Process Completely
- `2_create_tables.ipynb` - Contains the SQL code to create the schema in the database
- `3_human_dev_ind` - Extracts the data from the `Resources/human_dev_ind.csv` file and uploads it to the ETL_db Database
- `4_economic` - Extracts the data from the `Resources/economic.csv` file and uploads it to the ETL_db Database
- `5_suicide.ipynb` - Extracts the data from the `Resources/suicide.csv` file and uploads it to the ETL_db Database
- `6_etl_result.ipynb` - Runs the final SQL query to the resulting database
- `config.py` - Contains the connection data to the Postgres database
#### - `Resources`
- `countries_problems_equivalence.csv` - Contains the necessary information to unify  the names on the countries
- `countries.csv` - Contains the information to filter only countries from the csv files
- `economic.csv` - Contains data from economic variables by country and year
- `human_dev_ind.csv` - Contains the human development by country and year
- `suicide.csv` - Contains the suicide rates for men and women by country and year




# Metadata

#### - Variable SQL Name:  Suicide_Rate_Female and Suicide_Rate_Male
- Full Name:    Suicide mortality rate (per 100 000 population)
- Definition:   Number of suicide deaths in a year, divided by the population and multiplied by 100 000.  

#### - Variable SQL Name:  GDP Growth   
- Full Name:    GDP growth (annual %)
- Definition:   Annual percentage growth rate of GDP at market prices based on constant local currency.  

#### - Variable SQL Name:  Inflation   
- Full Name:    Inflation, consumer prices (annual %)
- Definition:   Inflation as measured by the consumer price index reflects the annual percentage change in the cost to the average consumer of acquiring a basket of goods and services.

#### - Variable SQL Name:  Human Development Index   
- Full Name:    Human Development Index (HDI)
- Definition:   A composite index measuring average achievement in three basic dimensions of human development, 
    - a long and healthy life, 
    - knowledge and 
    - a decent standard of living. 
