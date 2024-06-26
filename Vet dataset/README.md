# Vet Data Analysis

This SQL project explores various analytical questions about veterinary services using data from a veterinary clinic's database. The analysis is structured around several key questions that focus on cost, revenue, demographic patterns, and trends of procedures carried out by the clinic.

## Project Overview

The goal of this project is to derive insights from the vet clinic's operational data, helping the clinic to understand patterns and optimize their services.

## Database schema 
![Vet data schema](https://github.com/Atharvak29/SQL_project/assets/70752461/d0248568-eb56-4196-83ad-1d39076ec542)

## SQL Queries and Their Descriptions

Below are descriptions of the SQL queries used to extract data for each of the analytical questions posed in this project, highlighting the most complex query for detailed analysis.

### 1. Average Cost Per Procedure Type
Calculate the average price for each type of procedure to analyze cost effectiveness.

### 2. Procedure Type Generating the Highest Revenue
Sum the revenues generated by each procedure type to determine the most profitable one.

### 3. Average Age of Pets Undergoing Each Type of Procedure
Analyze if certain age groups of pets are more prone to specific procedures.

### 4. Frequency of Procedures Throughout the Year
Identify trends or seasonality in the demand for different procedures.

### 5. Correlations Between Pet Type and Procedures
This query is the most complex as it explores significant associations between the kind of pet and the procedures they undergo, using grouping and aggregation to derive insights.

```sql
SELECT p.kind, ph.proceduretype, COUNT(*) AS count_procedures
FROM pets p
JOIN procedureshistory ph ON p.petid = ph.petid
GROUP BY p.kind, ph.proceduretype
ORDER BY count_procedures DESC;
```

### 6. Average Costs by Geographic Region
Determine regional cost variations by grouping data by city or state.

### 7. Percentage of Pets Never Having Undergone a Procedure
Explore pet records to identify those who have never been linked to a procedure record.

### 8. Owners Spending Analysis
Examine which owners tend to spend the most on pet healthcare and its relation to pet age or type.

## Conclusion
This project highlights how SQL can be utilized to analyze and understand better the operational data from a veterinary clinic. Through various queries, we have uncovered patterns that can help optimize the services and operations of the clinic.
