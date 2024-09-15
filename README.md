Instructions for adding data from new ad platforms into MCDM

1. Set up a dbt Cloud repository with GitHub and connect it to Google BigQuery.
2. Create a models folder with marts and staging subfolders.
3. In the staging subfolder, implement SQL models for each CSV file in the seeds folder by cleaning and transforming fields to match the mcdm_paid_ads_basic_performance_structure format. Create a channel label for each model for future transformations.
4. In the marts folder, create an ads_performance_metrics model to aggregate data using UNION ALL on the staging models. Calculate metrics such as CPC, conversion cost, cost per engagement, and impressions by channel.
5. Preview each step and run dbt to create views and tables in Google BigQuery.
6. Compare the results in the preview table with the provided dashboard. If the results don’t match, review the formulas and corresponding fields in the staging models and make adjustments.
7. Export the final data to Google Looker Studio. Create four bar charts, set dimensions by channel, and add the relevant metrics. Adjust fonts and axes as needed.

note: Update the dbt_project.yml file with the new project name and configure the materialization settings for each folder.