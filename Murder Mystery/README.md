
# SQL Project: Murder Mystery Investigation

In this SQL project, we solved a fictional murder case using a series of SQL queries. The murder occurred on January 15, 2018, in SQL City. This document outlines the steps and SQL queries used to analyze data from various tables and solve the mystery.

## Project Overview

**Objective**: Use SQL queries to solve the murder mystery by analyzing data from the SQL City police department's database.

## Data Schema

Before we dive into the SQL queries, let's take a look at the schema of our database.

<img width="594" alt="schema_diagram" src="https://github.com/Atharvak29/SQL_project/assets/70752461/1819d5b2-fd9a-4dcc-9870-dd1ce0a94e02">

### SQL Queries Used in the Investigation

Here are some snippets of the SQL queries used:

1. **Retrieve Crime Scene Report:**
    ```sql
    SELECT * FROM crime_scene_report
    WHERE city = "SQL City" AND type = "murder" AND date = 20180115
    LIMIT 50;
    ```

2. **Witness Interviews:**
    - Morty Schapiro (1st witness):
        ```sql
        SELECT * FROM person
        WHERE address_street_name LIKE "Northwestern Dr"
        ORDER BY address_number DESC
        LIMIT 50;
        ```
    - Annabel Miller (2nd witness):
        ```sql
        SELECT * FROM person
        WHERE name LIKE "%Annabel%" AND address_street_name LIKE "Franklin Ave"
        LIMIT 50;
        ```

3. **Suspect Verification:**
    - Jeremy Bowers (suspected murderer):
        ```sql
        SELECT p.id, mem.id AS gym_id, p.name, dl.plate_number, mem.membership_status FROM get_fit_now_member mem
        JOIN person p ON mem.person_id = p.id
        JOIN drivers_license dl ON p.license_id = dl.id
        WHERE (mem.id LIKE "48Z%" AND mem.membership_status = "gold") AND dl.plate_number LIKE "%H42W%"
        LIMIT 50;
        ```

### Conclusion 

Using SQL, the suspect Jeremy Bowers was identified based on witness descriptions and corroborating evidence from various data sources, demonstrating the power of SQL in solving real-world problems.

### Credit
I used this website for the above project : "https://mystery.knightlab.com/#experienced"

