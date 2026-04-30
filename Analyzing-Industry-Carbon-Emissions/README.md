## 🏭 Analyzing Industry Carbon Emissions

**Objective: Find the number of unique companies and their total carbon footprint (PCF) for each industry group, filtering for the most recent data year.**

This project investigates the greenhouse gas emissions attributable to various products, from food to technology. Using a dataset of Product Carbon Footprints (PCFs) measured in CO2 equivalents, I used PostgreSQL to aggregate industry-wide emissions, highlighting which sectors contribute most significantly to global carbon output.

## Data description
| Column         | Data type  |
| -------------  | ---------- |
| id             | varchar    |
| year           | int        |
| product_name   | varchar    |
| company        | varchar    |
| country        | varchar    |
| industry_group | varchar    |
| weight_kg      | numeric    |
| carbon_footprint_pcf | varchar    |
| upstream_percent_total_pcf             | varchar    |
| operations_percent_total_pcf            | varchar    |
| downstream_percent_total_pcf            | varchar    |

## SQL Query 
> Find the number of unique companies and their total carbon footprint (PCF) for each industry group, filtering for the most recent data year.

![Photos/query.png](Photos/query.png)

## Output
![Photos/output.png](Photos/output.png)

## Key Insights 
* Primary Polluters: The Materials and Capital Goods sectors dominate the carbon footprint in the 2017 dataset, accounting for the vast majority of recorded emissions.
* Company Distribution: Despite having more unique companies represented, Technology Hardware & Equipment has a significantly lower total footprint compared to the heavy industrial sectors.
* Concentrated Impact: Sectors like Software & Services and Commercial Services show minimal emissions in comparison, reflecting the high heat generation and energy intensity required for physical manufacturing vs. digital services.
![Photos/co2.png](Photos/co2.png)
