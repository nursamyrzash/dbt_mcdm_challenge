select
    cast(campaign_id as string) as campaign_id,
    'Bing' as channel,
    clicks,
    null as impressions,
    spend,
    conv as total_conversions,
    null as engagements
from {{ ref('src_ads_bing_all_data') }}