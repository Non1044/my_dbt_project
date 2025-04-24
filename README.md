# Modern Data Engineering with DBT and BigQuery

This project showcases a deep dive into the powerful combination of **DBT (Data Build Tool)** and **Google BigQuery**


## Learn how to

-  Set up DBT and BigQuery from scratch  
-  Link DBT and BigQuery using service account credentials  
-  Write SQL-based data transformations using DBT models  
-  Convert between tables and views with DBT materializations  
-  Write unit tests for your data transformations  
-  Automatically generate documentation for your models

---

## 📁 Technologies Used

- DBT (Data Build Tool)
- Google BigQuery
- SQL
- Git + GitHub

---

## 📌 Prerequisites

- Python 3.8+
- `dbt-bigquery` installed
- Google Cloud Project + BigQuery access
- Service Account Key JSON file

---

## 🛠️ Setup Instructions

Create your own `profiles.yml` in `~\.dbt\` with the following format:

```yaml
your_project_name:
  target: dev
  outputs:
    dev:
      type: bigquery
      method: service-account
      project: "your-gcp-project"
      dataset: "your_dataset"
      keyfile: "~\.dbt\your-key.json"
      threads: 4
      timeout_seconds: 300
```
## 💡 Getting Started
```bash
# Clone the repository
git clone https://github.com/your-username/your-dbt-project.git
cd your-dbt-project
# Run dbt
dbt run