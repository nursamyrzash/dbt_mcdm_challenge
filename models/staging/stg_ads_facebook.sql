select
    cast(campaign_id as string) as campaign_id,
    'Facebook' as channel,
    clicks,
    impressions,
    spend,
    purchase as total_conversions, 
    (clicks + likes + comments + comments_2 + shares + shares_2 + views) as engagements
from {{ ref('src_ads_creative_facebook_all_data') }}