# :robot:Summary
This repo is a demo and exercise based on dbt-core using DBT Labs jaffle-shop data.
All the resources about dbt-core are available here: https://docs.getdbt.com/quickstarts/manual-install?step=1

## :dancer:Recommended Steps

The **dbt-core** tutorial offered by DBT Lab are quick and basic to get you experience the tool on your local machine. However, there are still a lot more to be covered to help improve the project.

Here are the resources I found helpful and I recommend **follow them in order**:

1. Finish setting up the dbt-core project on your local machine following [this guide](https://docs.getdbt.com/quickstarts/manual-install?step=1)
   
2. Read the dbt best practices page and improve your `jaffle_shop` dbt project following [this guide](https://docs.getdbt.com/guides/best-practices)
    - at the end, your `jaffle_shop` project should look a lot different from the version you have upon finishing step 1
    - recommending reading the best practices guide first before following along with coding in the dbt project as the guide is just a guide but not a hard subscription. This means you get to make the decision on how to format and organize your project.
      - for example: in the organization section the guide started off introducing a staging >> intermediate >> mart, but later on recommended a [semantic layer practice](https://docs.getdbt.com/guides/best-practices/how-we-structure/5-semantic-layer-marts). **For my project here, I use the semantic layer structure to organize my files (as my current company also follows this strictly)**
  
3. Take a step back and reflect. What are the improvements can you make? Add some personal tweaks to the project. 

# :moon:Virtual Environment

For this project, I used poetry to create my virtual environment and manage all dependencies.
It is always recommended to use virtual environment on your project.
For more information on poetry, see [here](https://python-poetry.org/docs/basic-usage/)

I found this [YouTube video](https://youtu.be/0f3moPe_bhk?feature=shared) to be the best in demoing poetry, if you find the poetry documentation boring ;) 

# :spider:Data

Since the focus for this project is on dbt, so for the data part I just used the easiest way: using what's available from dbt lab's jaffle-shop data in BigQuery.

Tutorials for setting up Bigquery here: https://docs.getdbt.com/quickstarts/bigquery?step=2

Per DBT labs, the Jaffle Shop source data are:

1. A replica of our transactional database, called jaffle_shop, with core entities like orders and customers.
2. Synced data from Stripe, which we use for processing payments.

(reference: https://docs.getdbt.com/guides/best-practices/how-we-structure/1-guide-overview#guide-structure-overview)

Follow the reference above to get an ideal of how the end product of this project will be organized.

## :apple:More on Jaffle Shop Data

This git-hub repo contains all raw data (csv) that can be used for seed files: https://github.com/dbt-labs/jaffle-shop-data

This repo is the official jaffle-shop dbt project: https://github.com/dbt-labs/jaffle_shop-dev/tree/master

# :book:Useful References

I tried following the tutorial from start to end, but I realized some parts are a bit vague. 😵

I used the following docs to help me get through:

1. Setting up `profiles.yml` for BigQuery Service Account: https://docs.getdbt.com/docs/core/connect-data-platform/bigquery-setup
2. Always ensure you create a new dataset in your BigQuery Project named `<dbt_yourname>` before running dbt debug