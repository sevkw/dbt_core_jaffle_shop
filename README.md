# Summary
This repo is a demo and exercise based on dbt-core using DBT Labs jaffle-shop data.
All the resources about dbt-core are available here: https://docs.getdbt.com/quickstarts/manual-install?step=1

# Virtual Environment

For this project, I used poetry to create my virtual environment and manage all dependencies.
It is always recommended to use virtual environment on your project.
For more information on poetry, see here: https://python-poetry.org/docs/basic-usage/

I found this YouTube video to be the best when using poetry in practice: https://youtu.be/0f3moPe_bhk?feature=shared

# Data

Since the focus for this project is on dbt, so for the data part I just used the easiest way: using what's available from dbt lab's jaffle-shop data in BigQuery.

Tutorials for setting up Bigquery here: https://docs.getdbt.com/quickstarts/bigquery?step=2

# Useful References

I tried following the tutorial from start to end, but I realized some parts are a bit vague.
I used the following docs to help me get through:

1. Setting up `profiles.yml` for BigQuery Service Account: https://docs.getdbt.com/docs/core/connect-data-platform/bigquery-setup
2. Always ensure you create a new dataset in your BigQuery Project named <dbt_yourname> before running dbt debug