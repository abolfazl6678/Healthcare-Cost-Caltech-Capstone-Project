# Healthcare Cost Prediction - Caltech Data Science Capstone Project

Comprehensive data science capstone project focused on predicting patient healthcare costs using real-world features and multiple tools including SQL, Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn, SciPy, and Tableau.

---

## Overview

Rising healthcare costs are a major public concern and a financial burden for both patients and insurance providers. This project aims to predict patient healthcare expenses and identify the factors contributing to these costs using structured data and end-to-end data science techniques.

This capstone represents the culmination of Caltech's Data Science Certificate Program, applying everything from data exploration and visualization to machine learning modeling and business insights.

---

## Objectives

- Predict patients’ future healthcare costs using structured data.
- Identify key factors that influence medical charges.
- Understand feature dependencies using statistical tools.
- Use machine learning models to forecast charges.
- Visualize insights with Tableau and Python libraries.
- Apply SQL for data querying and manipulation.

---

## Dataset Description

The project uses a dataset composed of three related tables:

### 1. **Hospitalization Details**
| Column Name         | Description                              |
|---------------------|------------------------------------------|
| `Customer ID`       | Unique identifier for each patient       |
| `Year`              | Year of hospitalization                  |
| `Month`             | Month of hospitalization                 |
| `Date`              | Date of hospitalization                  |
| `No_of_children`    | Number of children the patient has       |
| `Charges`           | Hospitalization cost                     |
| `Hospital_Tier`     | Tier level of the hospital (tie1-1 best) |
| `City_Tier`         | Tier classification of the city (tie1-1 best)|
| `State_ID`          | ID of the State                          |

### 2. **Medical Examinations**
| Column Name          | Description                                      |
|----------------------|--------------------------------------------------|
| `Customer ID`        | Unique patient identifier                        |
| `BMI`                | Body Mass Index                                  |
| `HBA1C`              | Glycated hemoglobin level (diabetes indicator)   |
| `Heart_Issues`       | Heart-related issues (Yes/No)                    |
| `Any_Transplants`    | Organ transplant status (Yes/No)                 |
| `Cancer_History`     | Cancer history (Yes/No)                          |
| `No_of_Major_Surgeries` | Count of major surgeries                      |
| `Smoker`             | Smoking status (Yes/No)                          |

### 3. **Names**
| Column Name    | Description                     |
|----------------|---------------------------------|
| `Customer ID`  | Unique patient identifier       |
| `Name`         | Patient’s name                  |

---

## Tools & Libraries

| Category | Tools & Libraries |
|---------|-------------------|
| Programming | Python, SQL |
| Data Manipulation | Pandas, NumPy |
| Data Visualization | Matplotlib, Seaborn, Tableau |
| Statistical Analysis | SciPy, Statmodels |
| Machine Learning | Scikit-learn |
| Other | Jupyter Notebook, Git/GitHub |

---
## Methodology

**1. Exploratory Data Analysis (EDA) and Feature Engineering**
- Understand the Problem & Data Context
- Load & Inspect the Data
- Data Cleaning & Preprocessing (missing data, data conversion for categorical data, etc)
- Create new meaningful factors to the investigation from current variables (age and gender)
- Distribution study of varaibles by plots including histogram, box, swarm, radar, violion, and stacked bar 
- Hypothesis testing to find significe between hospital tier, city tier and smoking status on hospitalization costs

**2. Built multiple Machine Learning models and compared their performance**
- Linear Regression
- Rige and Lasso Regression
- Decision Tree Regressor
- Random Forest Regressor
- Gradient Boosting Regressor
  
*Model evaluation metrics:*
- RMSE (Root Mean Squared Error)
- MAE (Mean Absolute Error)
- R² Score

**3. Tableau Dashboard**

An interactive Tableau dashboard was created to:
- Explore healthcare cost by all family and health related factors such as age, hospital-tier, cancer history, etc. 
- Visualize average, maximum and minimum healthcare cost by all the fators (family and health).

**4. SQL**

Gain comprehensive understanding of the factors affecting hospitalization costs:
- Create database and related tables.
- Determine type of data in each column.
- Clean data in the tables (null, duplicated, etc).
- Merge tables properly and perform related processes.
- Analyze effects of factors on average cost of hospitalization.

---

## Results & Insights

- Smoking status, BMI, and major surgeries were among the strongest predictors of healthcare costs.
- Random Forest performed best with the lowest RMSE and highest R².
- Visualizations provided key insights into how demographic and medical variables impact cost.
---

## Project Structure ???

```
├── data/
│ ├── interim/
│ │   ├── df_Hospitalisation_details.parquet
│ │   ├── df_Medical_Examinations.parquet
│ │   └── df_Names.parquet
│ └── raw/
│     ├── Hospitalisation_details.csv
│     ├── names.csv
│     └── medical_examination.xlsx
├── jupyter_notebook_Scripts/ ????
│     ├── 01_EDA_Feature_Engineering.ipynb
│     ├── 0.ipynb 
│     └── 0s.ipynb
├── output/ ?????
│ ├── jupyter_notebook/
│ │   ├── 01_EDA_Feature_Engineering.docx
│ │   ├── ??
│ │   └── ???
│ ├── SQL/
│ │   ├── merged_cleaned_tables_Hospitalisation_details_Medical_Examinations.csv
│ │   ├── data_analysis_1.png
│ │   ├── data_analysis_2.png
│ │   ├── data_analysis_3.png
│ │   └── data_analysis_4.png
│ └── Tableau/
│     └── dashboard_Tableau_BI.png
├── plots/ ???
│     ├── Box_plot_whisker.png
│     ├── Cost_dist_hospital_tier_gender.png
│     ├── Histogram.png
│     ├── Median_cost_radar_plot.png
│     ├── stacked_plot.png
│     ├── Swarm_Plots.png
│     ├── ??.png
│     ├── ??.png
│     └── ?.png
├── SQL/
│     └── SQL_Script.sql
├── tableau/
│     ├── Business_Insights.twbx
│     └── Business_Insights.twb
└── README.md


```
---
## Steps to Run
**1. jupyter notebook:**
   1. Go to `Jupyter_notebook_Scripts` folder.
   2. Connect to local database.
   3. Output of the notebooks can be check in `Output` folder.
   4. All analysis of the data can be read in the related notebooks and the outputs.

**2. SQL:**
   1. Open MySQL Workbench.
   2. Run all scripts one by one according to numbers.
   3. Right-click on data base named `insurance_analysis`.
   4. Pick `Table Data Import Wizard` from the right click menu
   5. Follow all windows step by step until the table import to MySQL
   6. Repeat it for tables including `Hospitalisation_details`, `Medical_Examinations` and `Names`.
   7. Open `SQL_Script` from SQL folder by MYSQL 
   8. Select all lines in the written code and run it 

**3. tableau:**
   1. Go to `Tableau` folder.
   2. Run `Business_Insights.twbx`.
   3. Created dashboard is appeared
---

## Key Learnings

- End-to-end data science workflow: from raw data to business insights.
- Importance of domain context in healthcare analytics.
- Comparing and tuning different regression and machine learning models.
- Communicating results using visual tools like Tableau.
- Gained comprehnesive understadning of factors affecting on hospitalization costs by SQL

---

## Future Improvements

- Deploy model on AWS cloud.
- Include more factors gender, race and physical activity if available.
- Integrate real-time API for ongoing cost prediction.

---

## Author

**Abolfazl Zolfaghari**
[Email](ab.zolfaghari.abbasghaleh) | [GitHub](https://github.com/abolfazl6678)

---





