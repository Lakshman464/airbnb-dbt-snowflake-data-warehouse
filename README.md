Airbnb Data Warehouse using dbt and Snowflake

📌 Project Overview

This project implements an Airbnb data warehouse using Snowflake and dbt (Data Build Tool) to transform raw Airbnb data into clean, structured, and analytics-ready datasets.

The project follows the Medallion Architecture, organizing data into Bronze, Silver, and Gold layers. It uses dbt models, reusable macros, incremental transformations, and data quality tests to support reliable data processing.

🎯 Objectives

Build a structured data warehouse using Snowflake.

Implement Bronze, Silver, and Gold data transformation layers.

Transform and clean Airbnb bookings, listings, and hosts data.

Use dbt macros to create reusable SQL logic.

Implement incremental models to process new data efficiently.

Create analytical tables and dimensions for downstream reporting.

Apply data quality tests to improve data reliability.

🛠️ Tech Stack

Data Warehouse: Snowflake

Transformation Tool: dbt Core

Language: SQL, Jinja

Version Control: Git and GitHub

🏗️ Data Architecture

The project uses a three-layer Medallion Architecture.

1. Bronze Layer

Stores source data ingested from the staging/source tables with minimal transformations.

2. Silver Layer

Cleans and transforms the source data, applies business logic, calculates booking amounts, and derives host response-rate quality categories.

3. Gold Layer

Provides analytics-ready data models, including dimensional tables and an Operational Business Table (OBT) combining booking, listing, and host information.

Airbnb Source Data
        |
        v
   Bronze Layer
        |
        v
   Silver Layer
        |
        v
    Gold Layer
        |
        v
Analytics-Ready Data

⚙️ Key Features

Incremental Models: Process newly added records instead of rebuilding the entire dataset on every run.

Reusable Macros: Encapsulate repeated SQL logic using Jinja macros.

Data Transformations: Clean host names, calculate booking amounts, and derive response-rate quality categories.

Dimensional Modeling: Build listing and host dimension tables.

Joins and Data Integration: Combine bookings, listings, and host information into a unified dataset.

Data Quality Testing: Use dbt tests and custom SQL tests to validate business rules.

📂 Project Structure

aws_dbt_snowflake_project/
│
├── analyses/
├── macros/
├── models/
│   ├── bronze/
│   ├── silver/
│   └── gold/
├── seeds/
├── snapshots/
├── tests/
├── dbt_project.yml
├── packages.yml
├── README.md
└── .gitignore

Note: The folders shown are the expected structure; adjust them to match the actual folders in your repository.

🚀 Getting Started

Prerequisites

Python

dbt Core

dbt-snowflake adapter

A Snowflake account

Git

1. Clone the Repository

git clone https://github.com/YOUR_USERNAME/airbnb-dbt-snowflake-data-warehouse.git
cd airbnb-dbt-snowflake-data-warehouse

2. Activate Your Python Environment

On Windows PowerShell:

.\.venv\Scripts\Activate.ps1

Use the activation command appropriate for your environment if you use a different virtual environment name.

3. Install Dependencies

pip install dbt-snowflake
dbt deps

4. Configure Snowflake

Configure your Snowflake connection in the local dbt profiles.yml file. Set the account, user, role, warehouse, database, schema, and authentication details appropriate for your environment.

Security: Never commit passwords, private keys, access tokens, or other credentials to GitHub.

5. Verify the Connection

dbt debug

6. Run the Models

dbt run

7. Run Data Tests

dbt test

8. Generate and View Documentation

dbt docs generate
dbt docs serve

📊 Example Transformations

Calculate total booking amounts using nights booked, booking amount, cleaning fees, and service fees.

Derive host response-rate quality labels such as VERY GOOD, GOOD, FAIR, and POOR.

Join bookings with listing and host attributes to create a unified analytical dataset.

🔮 Future Improvements

Integrate automated data ingestion.

Add more schema tests and business-rule validations.

Set up CI/CD workflows for dbt models.

Connect the Gold layer to a BI tool such as Power BI or Tableau.

Add data lineage diagrams and project screenshots.