# 🏥 Healthcare Cost Prediction — Caltech Data Science Capstone Project

**Comprehensive data science capstone project focused on predicting patient healthcare costs using real-world features and multiple tools including SQL, Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn, SciPy, and Tableau.**

---

## 📘 Overview

Rising healthcare costs are a major public concern and a financial burden for both patients and insurance providers. This project aims to predict patient healthcare expenses and identify the factors contributing to these costs using structured data and end-to-end data science techniques.

This capstone represents the culmination of Caltech's Data Science Certificate Program, applying everything from data exploration and visualization to machine learning modeling and business insights.

---

## 🎯 Objectives

- Predict patients’ future healthcare costs using structured data.
- Identify key factors that influence medical charges.
- Understand feature dependencies using statistical tools.
- Use machine learning models to forecast charges.
- Visualize insights with Tableau and Python libraries.
- Apply SQL for data querying and manipulation.

---

## 📊 Dataset Description

The project uses a dataset composed of three related tables:

### 1. **Hospitalization Details**
| Column Name         | Description                              |
|---------------------|------------------------------------------|
| `Customer ID`       | Unique identifier for each patient       |
| `Year`, `Month`, `Date` | Date of hospitalization             |
| `No_of_children`    | Number of children the patient has       |
| `Charges`           | Total medical charges incurred           |
| `Hospital_Tier`     | Tier level of the hospital               |
| `City_Tier`         | Tier classification of the city          |
| `State_ID`          | Encoded state identifier                 |

### 2. **Medical Examinations**
| Column Name          | Description                                      |
|----------------------|--------------------------------------------------|
| `Customer ID`        | Unique patient identifier                        |
| `BMI`                | Body Mass Index                                  |
| `HBA1C`              | Glycated hemoglobin level (diabetes indicator)   |
| `Heart_Issues`       | Heart-related issues (Yes/No)                    |
| `Any_Transplants`    | Organ transplant status                          |
| `Cancer_History`     | Cancer history (Yes/No)                          |
| `No_of_Major_Surgeries` | Count of major surgeries                     |
| `Smoker`             | Smoking status (Yes/No)                          |

### 3. **Names**
| Column Name    | Description                     |
|----------------|---------------------------------|
| `Customer ID`  | Unique patient identifier       |
| `Name`         | Patient’s name                  |

---

## 🔧 Tools & Libraries

| Category | Tools & Libraries |
|---------|-------------------|
| Programming | Python, SQL |
| Data Manipulation | Pandas, NumPy |
| Data Visualization | Matplotlib, Seaborn, Tableau |
| Statistical Analysis | SciPy |
| Machine Learning | Scikit-learn |
| Other | Jupyter Notebook, VS Code, GitHub |

---

## 📈 Exploratory Data Analysis (EDA)

Performed detailed EDA to:
- Understand distributions of key features (charges, BMI, age, etc.)
- Detect outliers and missing values
- Visualize relationships between features (e.g., smoker vs charges)
- Identify correlations and feature dependencies

---

## 🤖 Modeling

Trained and evaluated multiple regression models to predict healthcare costs:
- Linear Regression
- Decision Tree Regressor
- Random Forest Regressor
- Gradient Boosting Regressor

Model evaluation metrics:
- RMSE (Root Mean Squared Error)
- MAE (Mean Absolute Error)
- R² Score

---

## 📋 Results & Insights

- Smoking status, BMI, and major surgeries were among the strongest predictors of healthcare costs.
- Random Forest performed best with the lowest RMSE and highest R².
- Visualizations provided key insights into how demographic and medical variables impact cost.

---

## 📊 Tableau Dashboard

An interactive Tableau dashboard was created to:
- Explore cost trends by city/state tiers
- Visualize cost differences by smoking status, hospital tier, and more
> 📎 [Link to Tableau Public Dashboard](#) *(Add your actual link here)*

---

## 📁 Project Structure

