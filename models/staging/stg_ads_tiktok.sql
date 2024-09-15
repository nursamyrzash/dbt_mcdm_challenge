select
    cast(campaign_id as string) as campaign_id,
    'TikTok Ads' as channel,
    clicks,
    impressions,
    spend,
    conversions as total_conversions,
    null as engagements
from {{ ref('src_ads_tiktok_ads_all_data') }}