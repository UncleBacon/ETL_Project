# Necessary Steps to Run all the Project

1. - Create a `Postgres` Database with the name `ETL_db`
2. - Update the `config.py` file in the path `\Jupyter Notebooks\config.py`  with your connection data to your `Postgres database`
3. - Run only the `RUN_ME.ipynb`in the path `\Jupyter Notebooks\RUN_ME.ipynb`

- Notes:
  - The code drop the tables in the database ETL_db if existed and upload all the information again
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

### - `ETL Project Proposal.docx` - Contains the text for the project proposal
### - `ETL_db Schema` - Contains the SQL code to create the database schema
### -  `Images`
- `Final Query Result` - Contains the image of the query and resulting table of the ETL Process
- `Schema` - Contains the image of the schema used to create the tables in the database
### - `Jupiter Notebooks` 
- `1_RUN_ME.ipynb` - Calls all the other notebooks and manages the ETL Process Completely
- `2_create_tables.ipynb` - Contains the SQL code to create the schema in the database
- `3_human_dev_ind` - Extracts the data from de `Resources/human_dev_ind.csv` file and upload it to the ETL_db Database
- `4_economic` - Extracts the data from de `Resources/economic.csv` file and upload it to the ETL_db Database
- `5_suicide.ipynb` - Extracts the data from de `Resources/suicide.csv` file and upload it to the ETL_db Database
- `6_etl_result.ipynb` - Runs the final SQL query to the resulting database
- `config.py` - Contains the connection data to the Postgres database
### - `Resources`
- `countries_problems_equivalence.csv` - Contains the necessary information to unify  the names on the countries
- `countries.csv` - Contains the information to filter only countries from the csv files
- `economic.csv` - Contains data from economic variables by country and year
- `human_dev_ind.csv` - Contains the human development by country and year
- `suicide.csv` - Contains the suicide rates for men and women by country and year

# Metadata

- Variable SQL Name:  
`Suicide_Rate_Female`   
- Full Name:           
Suicide mortality rate (per 100 000 population)
- Definition:           
Number of suicide deaths in a year, divided by the population and multiplied by 100 000.  