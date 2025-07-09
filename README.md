

# 📊 Netflix SQL Analysis

This project explores Netflix’s content library using structured SQL queries. It focuses on extracting business insights from a cleaned and normalized version of the original Netflix dataset.

## 🗃️ Dataset Overview

The dataset has been processed and split into multiple normalized tables:

- **`titles`**: Central table containing metadata for each show (e.g., `show_id`, title, type, duration, date added).
- **`director`**: Names of directors linked by `show_id`.
- **`country_cleaned`**: Cleaned country data for each title.
- **`listed_in`**: Genre or category information (e.g., "Comedy", "International Movies").
- **`rating_description`**: Descriptions and explanations of rating labels.

All tables are connected through the `show_id` field, except for `rating_description` being connected through `rating` field with `titles` table.

## 📈 Key Analyses

The analysis aims to answer key business and strategic questions, including:

- **Top Countries & Directors**: Identifies the countries and directors with the highest number of releases on the platform.
- **Genre Duration Trends**: Analyzes average duration of movies across different genres.
- **Seasonal Release Patterns**: Examines how release volumes vary by month and genre, to identify optimal release timings.
- **Market Segmentation**: Breaks down releases by content type and country for a detailed market view.

## 💡 Purpose

This analysis can help content strategists and data analysts:
- Understand regional and genre trends on Netflix.
- Optimize content planning based on seasonal and categorical data.
- Gain insight into director and country contributions to Netflix’s content library.

## 🛠️ Tools

- **MySQL Workbench** – Writing and testing SQL queries
- **Tableau Public** – For visualizations and dashboards (not included in this repo)

## 📁 Contents

- `Databse_queries`: SQL file containing all queries used for analysis
- `create_table`: SQL file containing the original dataset
- `dim_tables`: SQL file containing dim tables after being extracted from the original dataset
- `final_table`: SQL file containing the final table that is joined from dim tables
- `README.md`: Project overview and documentation

---
📬 Contact

Author: Chloe Doan
Email: lqchloe.doan@gmail.com 
Portfolio Repository: [GitHub Link](https://github.com/chloedoan/netflix-database-mysql)

