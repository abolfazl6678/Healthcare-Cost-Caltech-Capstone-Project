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

## Tools & Libraries ????

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
- 

**2. Building Mchine Learning Models and compariingn the performance**

Trained and evaluated multiple machine leanring models to predict healthcare costs:
- Linear Regression
- Rige and Lasso Regression
- Decision Tree Regressor
- Random Forest Regressor
- Gradient Boosting Regressor
Model evaluation metrics:
- RMSE (Root Mean Squared Error)
- MAE (Mean Absolute Error)
- R² Score

**3. Tableau Dashboard**

An interactive Tableau dashboard was created to:
- Explore healthcare cost by all family and health related factors such as age, hospital-tier, cancer history, etc. 
- Visualize average, maximum and minimum healthcare cost by all the fators (family and health).
## 4. SQL

Gain comprehensive understanding of the factors affecting hospitalization costs:
- Create database and related tables.
- Determine type of data in each column.
- Clean data in the tables (null, duplicated, etc).
- Merge tables properly and perform related processes.
- Analyze effects of factors on average cost of hospitalization.

---

## Results & Insights  ????

- Smoking status, BMI, and major surgeries were among the strongest predictors of healthcare costs.
- Random Forest performed best with the lowest RMSE and highest R².
- Visualizations provided key insights into how demographic and medical variables impact cost.
---

## Project Structure ???
```
healthcare-cost-capstone-project/
├── data/
│ ├── hospitalization.csv
│ ├── medical_examination.csv
│ └── names.csv
├── notebooks/
│ ├── 01_data_cleaning.ipynb
│ ├── 02_eda_visualization.ipynb
│ ├── 03_modeling.ipynb
├── tableau/
│ └── Business_Insights.twbx
│ └── dashboard_Tableau_BI.png
├── outputs/
│ ├── model_results.csv
│ ├── dashboard_Tableau_BI.png
│ └── plots/
├── README.md
└── SQL/
  ├── SQL_Script.sql
  ├── SQL_Script.docx
  └── Problem_defenition.png

```

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





