# Necessary Stept to Run all the Project

1. - Create a `Postgres` Database with the name `ETL_db`
2. - Update the `config.py` file in the path `\Jupyter Notebooks\config.py`  with your connection data to your `Postgres database`
3. - Run only the `RUN_ME.ipynb`in the path `\Jupyter Notebooks\RUN_ME.ipynb`

- Notes:
  - The code drop the tables in the database ETL_db if existed and upload all the information again
  - No other notebook or code needs to be run


# Sources of Data

## Suicide rate estimates, crude - Estimates by country

- Souce:    WHO
- Link:     http://apps.who.int/gho/data/node.main.MHSUICIDE?lang=en
- Files:    
            - suicide.json
            - suicide.csv

## Economic Data 

- Souce:    World Bank
- Link:     https://databank.worldbank.org/source/jobs
- Files:   
            - economic.csv
            - economic_matadata.csv


# Human Development Index (HDI)

- Souce:    United Nations Development Program
- Link:     http://hdr.undp.org/en/indicators/137506#