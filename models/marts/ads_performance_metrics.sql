with all_ads as (
    select * from {{ ref('stg_ads_bing') }}
    union all
    select * from {{ ref('stg_ads_facebook') }}
    union all
    select * from {{ ref('stg_ads_tiktok') }}
    union all
    select * from {{ ref('stg_ads_twitter') }}
)
select
    channel,
    sum(impressions) as total_impressions,
    sum(spend) / nullif(sum(total_conversions), 0) as conversion_cost,
    sum(spend) / nullif(sum(engagements), 0) as cost_per_engagement,
    sum(spend) / nullif(sum(clicks), 0) as cpc
from all_ads
group by channel