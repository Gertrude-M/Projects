# Global Cancer Patients Analysis(2015-2024)
This project explores and analyzes global trends in cancer cases between 2015 and 2024 using the publicly available global_cancer_patients_2015_2024 dataset from Kaggle.
## Project Overview
Cancer remains a leading cause of death worldwide, with rising incidence and survival disparities across regions. This project aims to:

  1. Analyze cancer incidence and survival trends globally

  2. Explore geographic and demographic disparities

  3. Model patient survival using clinical and demographic features

  4. Present actionable insights through visualizations and predictive modeling
## Tools and Technology
  * Languages: R
  * Libraries: Tidyverse, ggplot, dplyr
  * Database: CSV file parsed into structured dataframes
## Key Analyses
### 1. Descriptive statistics
* Number of cancer cases and deaths per region/year
* Age and gender distribution of cancer patients
### 2. Data Visualization
* Trend plots of incidence over time
* Choropleth maps showing global case distribution
* Survival rate comparisons across continents
### 3. Predictive Modeling
* Logistic Regression Model to predict survival status based on:
    * Age, gender
    * Cancer type
    * Stage at diagnosis
    * Treatment access
*  Model accuracy: ~82% (validated on a test set)
##  Key Findings
* Disparities in survival outcomes were strongly linked to geographic region and cancer stage at diagnosis.
* Regions with limited access to timely diagnosis and treatment had higher mortality rates.
* Age and stage were the most significant predictors of patient outcomes.
