
# 📊 Netflix SQL & Python Analysis

This project explores Netflix’s content library using a combination of SQL and Python data processing. It focuses on extracting business insights from a cleaned and normalized version of the original Netflix dataset, further enriched with external IMDb ratings data.

---

## 🗃️ Dataset Overview

The dataset has been processed and split into multiple normalized tables:

- **titles**: Central table containing metadata for each show (e.g., `show_id`, `title`, `type`, `duration`, `date_added`).
- **director**: Names of directors linked by `show_id`.
- **country_cleaned**: Cleaned country data for each title.
- **listed_in**: Genre or category information (e.g., "Comedy", "International Movies").
- **rating_description**: Descriptions and explanations of rating labels.

All tables are connected through the `show_id` field, except for `rating_description` which links through the `rating` field to `titles`.

---

## 🐍 Python Data Enrichment (IMDb Integration)

To enrich the Netflix dataset with **average user ratings** and **number of votes**, a Python data pipeline was developed using IMDb’s non-commercial datasets. 

### 🔗 Data Sources

- **[Netflix Movies and TV Shows on Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)**  

- **[IMDb Non-Commercial Datasets](https://datasets.imdbws.com/)**  
   
  - `title.akas.tsv.gz`: Localized and alternative titles.
  - `title.basics.tsv.gz`: Title types, start years, genres.
  - `title.ratings.tsv.gz`: Average ratings and number of votes.

### 🛠️ Python Processing Steps

- Joined IMDb files on `tconst` to compile a dataset with:
  - Primary title
  - Average rating
  - Number of votes
- Matched IMDb titles to Netflix titles to attach ratings information.
- Produced a final enriched dataset with:
  - `show_id` (from Netflix)
  - `title` (from Netflix)
  - `averageRating` (from IMDb)
  - `numVotes` (from IMDb)

This dataset will be used in Tableau for advanced visualization, such as comparing Netflix content by popularity and rating metrics.

---

## 📈 Key Analyses

The combined SQL + Python dataset allows us to answer key business and strategic questions, including:

- **Top Countries & Directors**: Identifies the countries and directors with the highest number of releases on the platform.
- **Genre Duration Trends**: Analyzes average duration of movies across different genres.
- **Seasonal Release Patterns**: Examines how release volumes vary by month and genre, to identify optimal release timings.
- **Market Segmentation**: Breaks down releases by content type and country for a detailed market view.
- **User Ratings Insights** *(via Python integration)*: Highlights the highest-rated Netflix content and correlates user engagement metrics.

---

## 💡 Purpose

This combined analysis can help content strategists and data analysts:

- Understand regional and genre trends on Netflix.
- Optimize content planning based on seasonal and categorical data.
- Gain insight into director and country contributions to Netflix’s library.
- Leverage user rating data for quality-focused content decisions.

---

## 🛠️ Tools

- **MySQL Workbench** – Writing and testing SQL queries
- **Python (Pandas, NumPy)** – Data cleaning and integration with IMDb ratings
- **Tableau Public** – For visualizations and dashboards (not included in this repo)

---

## 📁 Contents

- `Databse_queries`: SQL file containing all queries used for analysis
- `create_table`: SQL file containing the original dataset
- `dim_tables`: SQL file containing dimension tables after extraction
- `final_table`: SQL file containing the final joined table
- `imdb_merge.ipynb`: Jupyter notebook for Python data enrichment with IMDb
- `README.md`: Project overview and documentation

---

---
📬 Contact

Author: Chloe Doan
Email: lqchloe.doan@gmail.com 
Portfolio Repository: [GitHub Link](https://github.com/chloedoan/netflix-database-mysql)

